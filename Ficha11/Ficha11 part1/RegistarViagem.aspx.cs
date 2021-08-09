using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistarViagem : System.Web.UI.Page
{

    // Declara variáveis para passagem de parâmetros
    private string nAssociado;
        /// <summary>
    /// Define uma propriedade para transferencia
    /// </summary>
    public string NumeroAssociado
    {
        get
        {
            return nAssociado;
        }
    }



    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)   //Verifica se a página é válida
        {
            nAssociado = txtNAssociado.Text;

            // Transfere dados para a pagina de MarcarReserva
            Server.Transfer("MarcarReserva.aspx");

            //Response.Redirect("MarcarReserva.aspx?na=" + txtNAssociado.Text);
        }
    }


    # region "=================== VALIDAÇÕES ==================="

    /// <summary>
    /// Validação da idade introduzida
    /// </summary>
    /// <param name="source"></param>
    /// <param name="args"></param>
    protected void ValidaIdade(object source, ServerValidateEventArgs args)
    {
        //Conversão da data de nascimento para DateTime
        DateTime dataNascimento = DateTime.Parse(args.Value);

        //Calculo da idade introduzida pelo utilizador
        int age = DateTime.Now.Year - dataNascimento.Year;

        //Se idade >= 65 anos, deixa seguir, caso contrário, dá erro
        if (age >= 65)
        {
            //Validação VÁLIDA
            args.IsValid = true;
        }
        else
        {
            //Validação INVÁLIDA
            args.IsValid = false;
        }
    }

    #endregion
}