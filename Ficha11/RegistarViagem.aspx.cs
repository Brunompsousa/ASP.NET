using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistarViagem : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (tbDate.Text == "")
        {
            Response.Write("DATA - ERRADO");
        }
        else
        {
            DateTime dt = DateTime.Parse(tbDate.Text);
            int ano;
            int.TryParse(dt.Year.ToString(), out ano);
            dt = DateTime.Now;
            int anonow;
            int.TryParse(dt.Year.ToString(), out anonow);

            if (anonow - ano >= 65)
            {
                
                if (tbNsocio.Text.All(char.IsDigit) && tbNsocio.Text.Length == 9)
                {
                    Response.Write("DATA e NUM - CERTO");
                    
                }
                else
                {
                    Response.Write("DATA- CERTO / NUM mal");
                }
            }
        }
        

        


        
    }
}