using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class eventos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dropdistrito.Items.Insert(0, new ListItem("Escolha um distrito", "-1"));
            droplocalidade.Items.Insert(0, new ListItem("Escolha uma Localidade", "-1"));
            dropevento.Items.Insert(0, new ListItem("Escolha um evento", "-1"));
            droplocalidade.Enabled = false;
            dropevento.Enabled = false; 
        }
    }


    protected void dropdistrito_SelectedIndexChanged(object sender, EventArgs e)
    {
        droplocalidade.Items.Clear();

        droplocalidade.DataSource = sqllocalidade;
        droplocalidade.DataBind();

        droplocalidade.Items.Insert(0, new ListItem("Escolha uma Localidade", "-1"));

        droplocalidade.Enabled = true;
    }

    protected void droplocalidade_SelectedIndexChanged(object sender, EventArgs e)
    {

        
    }

    protected void dropevento_SelectedIndexChanged(object sender, EventArgs e)
    {



        if (droplocalidade.SelectedValue != "-1")
        {
            bntInscrever.Enabled = true;
        }
    }
}