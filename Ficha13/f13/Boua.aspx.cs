using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Boua : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnEdit_Click(object sender, EventArgs e)
    {
        string input = Txbnum.Text;
        Page.Validate();

        if (Page.IsValid)
        {
            LabelErrorMsg.Text = "BOA!";
        }
    }
}