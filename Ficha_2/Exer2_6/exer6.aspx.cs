using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class exer6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string nome;

        nome = TextBox1.Text;

        Response.Write("Nome completo: " + nome + "<br />");
        Response.Write("Primeira letra: " + nome.Substring(0,1) + "<br />");
        Response.Write("Quantidade de letras: " + nome.Length + "<br />");
        Response.Write("Ultima letra do nome: " + nome.Substring(nome.Length - 1) + "<br />");
        Response.Write("Três primeras letras do nome: " + nome.Substring(0, 3) + "<br />");
        Response.Write("Quarta letra: " + nome.Substring(3, 1) + "<br />");
        Response.Write("Todas as letras, menos a primeira: " + nome.Substring(1, nome.Length-1) + "<br />");
        Response.Write("As duas ultimas letras: " + nome.Substring(nome.Length - 2) + "<br />");
        Response.Write("Primeiro nome: " + nome.Substring(0, nome.IndexOf(" ")) + "<br />");
        Response.Write("Apelido: " + nome.Substring(nome.LastIndexOf(" ") ,nome.Length - nome.LastIndexOf(" ")) + "<br />");


    }
}