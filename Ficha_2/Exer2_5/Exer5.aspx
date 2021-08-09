<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exer5.aspx.cs" Inherits="Exer5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type = "text/css" >
        .auto - style1 {
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
    <form id = "form1" runat="server">
    <div>
    
        <table class="auto-style3">
            <tr>
                <td class="auto-style1">Valor 1</td>
                <td class="auto-style2">Operador</td>
                <td>Valor 2</td>
            </tr>
        </table>
    
        <asp:TextBox ID = "TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:TextBox ID = "TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <asp:TextBox ID = "TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
    
    </div>
        <div>
            <asp:Button ID = "Button1" runat="server" Text="Calcular" OnClick="Button1_Click" /> 
        </div>
    </form>
</body>
</html>
