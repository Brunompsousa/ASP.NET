<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculadora.aspx.cs" Inherits="Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Maquina de Calcular</div>
        <div>
            <asp:TextBox ID="txtValA" runat="server"></asp:TextBox>
            <asp:DropDownList ID="selOperator" runat="server" OnSelectedIndexChanged="selOperator_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Selected="True">Escolha a opção </asp:ListItem>
                <asp:ListItem>+</asp:ListItem>
                <asp:ListItem>-</asp:ListItem>
                <asp:ListItem>/</asp:ListItem>
                <asp:ListItem>*</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtValB" runat="server"></asp:TextBox>
            <asp:Button ID="btnCalc" runat="server" OnClick="Button1_Click" Text="=" />
            <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
            <br />
        </div>

        <div id="LabelNumDigitos">
            Números de Digitos Decimais [1]<br />
            <asp:DropDownList ID="selNumDigitos" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="0">0 Digito decimal</asp:ListItem>
                <asp:ListItem Selected="True" Value="1">1 Digito decimal</asp:ListItem>
                <asp:ListItem Value="2">2 Digito decimal</asp:ListItem>
                <asp:ListItem Value="3">3 Digito decimal</asp:ListItem>
                <asp:ListItem Value="4">4 Digito decimal</asp:ListItem>
                <asp:ListItem Value="-1">+...</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtNumDigitosMore" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="False"></asp:TextBox>
        <asp:Button ID="btnNumDigitosUsar" runat="server" Text="Usar" Visible="False" />
        </div>      
    </form>
</body>
</html>
