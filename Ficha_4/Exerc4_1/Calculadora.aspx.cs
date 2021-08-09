using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Calculadora : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        decimal val1;
        decimal val2;
        MaquinaCalcularSimples maq = new MaquinaCalcularSimples();

        if ((decimal.TryParse(txtValA.Text, out val1) == true))
        {
            if (decimal.TryParse(txtValB.Text, out val2))
            {

                switch (selOperator.SelectedValue)
                {
                    case ("+"):
                        txtResult.Text =maq.Add(val1, val2).ToString(".##");
                        break;
                    case ("-"):
                        txtResult.Text = maq.Subtract(val1, val2).ToString(".##");
                        break;
                    case ("*"):
                        txtResult.Text = maq.Multiply(val1, val2).ToString(".##");
                        break;
                    case ("/"):
                        if (val2 == 0)
                        {
                            txtResult.Text = "Infinito";
                        }
                        else
                        {
                            txtResult.Text = maq.Divide(val1, val2).ToString(".##");
                        }                       
                        break;
                    default:
                        txtResult.Text = "Valores Invalidos";
                        break;

                }

            }
            else
            {
                txtResult.Text = "Valores Invalidos";
            }
        }
        else
        {
            txtResult.Text = "Valores Invalidos";
        }
      
    }

    protected void selOperator_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}