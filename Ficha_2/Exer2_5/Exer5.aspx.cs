using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exer5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string input;

        float n1;
        float n2;
        string op;

        input = TextBox1.Text;
        if (float.TryParse(input, out n1))
        {
            input = TextBox3.Text;
            if (float.TryParse(input, out n2))
            {
                input = TextBox2.Text;
                switch (input)
                {
                    case "+":
                        Response.Write(n1 + " + " + n2 + " = " + (n1 + n2));
                        break;

                    case "-":
                        Response.Write(n1 + " - " + n2 + " = " + (n1 - n2));
                        break;

                    case "*":
                        Response.Write(n1 + " * " + n2 + " = " + (n1 * n2));
                        break;

                    case "/":
                        if (n2 == 0)
                        {
                            Response.Write("Não e possivel dividir por 0");
                            goto end;
                        }
                        Response.Write(n1 + " / " + n2 + " = " + (n1 / n2));
                        break;

                    default:
                        Response.Write("Operador invalido");
                        break;
                }
            }
            else
            {
                Response.Write("Dados invalidos na Valor2");
            }
        }
        else
        {
            Response.Write("Dados invalidos na Valor1");
        }

        end:
        ;

    }
}