<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistarViagem.aspx.cs" Inherits="RegistarViagem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Atividades - Dezembro de 2017</h1>
        
        <asp:Label ID="Label1" runat="server" Text="Data de Nascimento"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbDate" runat="server"
            OnTextChanged="TextBox1_TextChanged"
            TextMode="Date"
            ValidationGroup="ValDados"
            ></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" 
            Text="*" 
            ErrorMessage="* Tem de introduzir uma data"
            ControlToValidate="tbDate"
            ValidationGroup="ValDados"
            ></asp:RequiredFieldValidator>
    
        <br />
        <br />
    
        <asp:Label ID="Label2" runat="server" Text="Número de Associado"></asp:Label> &nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="tbNsocio" runat="server"
            MaxLength="9"
            ValidationGroup="ValDados"
            OnTextChanged="TextBox2_TextChanged"
            ></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1" 
            runat="server" 
            ControlToValidate="tbNsocio"
            Text="**"
            ErrorMessage="** Tem de introduzir um nif valido"
            ValidationExpression="\d{9}"
            ValidationGroup="ValDados"
            ></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server"
            CompareValidator=""
            server=""
            Text="Continuar"
            ValidationGroup="ValDados<asp:CompareValidator runat=" OnClick="Button1_Click" style="height: 26px" />
        
        
    </div>
    </form>
</body>
</html>
