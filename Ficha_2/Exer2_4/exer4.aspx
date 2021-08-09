<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

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
                        Response.Write(n1 + " + " + n2 + " = " + (n1+n2));
                        break;

                    case "-":
                        Response.Write(n1 + " - " + n2 + " = " + (n1-n2));
                        break;

                    case "*":
                        Response.Write(n1 + " * " + n2 + " = " + (n1*n2));
                        break;

                    case "/":                        
                        if (n2 == 0)
                        {
                            Response.Write("Não e possivel dividir por 0");
                            goto end;
                        }
                        Response.Write(n1 + " / " + n2 + " = " + (n1/n2));          
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
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 122px;
        }
        .auto-style2 {
            width: 124px;
        }
        .auto-style3 {
            width: 47%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style3">
            <tr>
                <td class="auto-style1">Valor 1</td>
                <td class="auto-style2">Operador</td>
                <td>Valor 2</td>
            </tr>
        </table>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    
    </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Calcular" OnClick="Button1_Click" /> 
        </div>
    </form>
</body>
</html>
