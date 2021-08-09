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
        if (!Page.IsPostBack)
        {
        }
        if (Page.IsPostBack)
        {
            if (selNumDigitos.SelectedValue.Equals("-1"))
            {
                txtNumDigitosMore.Visible = true;
                txtNumDigitosMore.Text = "1";
                btnNumDigitosUsar.Visible = true;
            } 
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        MaquinaCalcularSimples maq = new MaquinaCalcularSimples();

        int dec;

        int.TryParse(selNumDigitos.SelectedValue, out dec);  

        txtResult.Text = maq.Calc(txtValA.Text, selOperator.Text, txtValB.Text, dec);

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void selOperator_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}