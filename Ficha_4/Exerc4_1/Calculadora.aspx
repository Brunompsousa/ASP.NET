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
        </div>
    </form>
</body>
</html>
