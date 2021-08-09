using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class f14 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txbnump.Text = "1";
            String ab =  DateTime.Now.ToLocalTime().ToString("MM-dd-yyyy");
            txbdataentrada.Text = ab;
            txbnoites.Text = "1";
        }
            
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
}