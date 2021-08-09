<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exec3_2.aspx.cs" Inherits="Exec3_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link href="myStyle.css" rel="stylesheet" type="text/css" />

    <title></title>
    <style type="text/css">
        .auto-style2 {
            FONT-WEIGHT: bold;
            FONT-SIZE: 11px;
            FONT-FAMILY: Tahoma, Verdana;
            COLOR: #000000;
            HEIGHT: 16px;
            width: 94px;
        }
        .auto-style3 {
            width: 94px;
        }
        .auto-style4 {
            FONT-WEIGHT: bold;
            FONT-SIZE: 11px;
            FONT-FAMILY: Tahoma, Verdana;
            COLOR: #000000;
            HEIGHT: 16px;
            width: 572px;
        }
        .auto-style5 {
            width: 572px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        

    </div>
        <table class="TabelaInternaAba">
            <tr>
                <td class="TituloBloco" colspan="2">Dados do Aluno</td>
                <td>&nbsp;</td>
            </tr>
            <tr class="FundoInverte">
                <td class="auto-style4">Nome</td>
                <td class="auto-style2">Idade</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="FundoInverte">
                <td class="auto-style4">Morada</td>
                <td class="auto-style2">Localidade</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
