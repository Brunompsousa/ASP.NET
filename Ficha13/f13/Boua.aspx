<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Boua.aspx.cs" Inherits="Boua" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Numero do Cliente<br />
        <asp:TextBox ID="Txbnum" runat="server" ValidationGroup="G1"></asp:TextBox>        

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txbnum"
            ErrorMessage="Campo obrigatório"
            Text="*"
            ValidationGroup="G1"
            ForeColor="Red"></asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator 
            ID="REXverify"
            runat="server" 
            ErrorMessage="Numero Inválido"
            Text="*"
            ForeColor="Red"
            ControlToValidate="Txbnum"
            ValidationExpression="[0-9]{3}\-[0-9]{3}\-[0-9]{4}"
            ValidationGroup="G1"
            ></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="BtnEdit" runat="server" OnClick="BtnEdit_Click" Text="Editar Dados Cliente"
            ValidationGroup="G1" />
    
        <br />
        <br /> 
        
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="G1" ForeColor="Red" />

        <asp:Label ID="LabelErrorMsg" runat="server" Text=" "></asp:Label>        
    </div>
    </form>
</body>
</html>
