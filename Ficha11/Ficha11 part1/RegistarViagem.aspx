<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistarViagem.aspx.cs" Inherits="RegistarViagem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $( function() {
            $("#txtDN").datepicker({
                changeMonth: true,
                changeYear: true,
                todayBtn: "linked",
                language: "it",
                autoclose: true,
                todayHighlight: true,
                dateFormat: 'yy-mm-dd'
            });
        } );
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
            <h1>Atividades - Dezembro de 2017</h1>
            <br />
            <br />
            <div style="width: 100%; display: table;">
                <div style="display: table-row">
                    <div style="width: 30%; display: table-cell;">
                        Data de Nascimento
                    </div>
                    <div style="display: table-cell;">
                        <asp:TextBox ID="txtDN" runat="server" style="width:150px;" TextMode="Date"></asp:TextBox>
                       
                        <asp:RegularExpressionValidator ID="revDataViagem" runat="server" 
                            ControlToValidate="txtDN"
                            ValidationExpression="^(19|20)\d\d[-/.](0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])$"
                            Text="*"
                            ErrorMessage="* Data de Nascimento inválida" 
                            ValidationGroup="grupoValidacao1"
                            ForeColor="Red">
                        </asp:RegularExpressionValidator>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtDN" 
                            ErrorMessage="* Valor obrigatório" 
                            Text="*"
                            ValidationGroup="grupoValidacao1"
                            ForeColor="Red">*</asp:RequiredFieldValidator>

                        <asp:CustomValidator ID="cvalValidaIdade" runat="server" 
                            ControlToValidate="txtDN"
                            Text="*"
                            ErrorMessage="* Apenas são permitidas inscrições a pessoas com idade maior ou igual a 65"
                            ValidationGroup="grupoValidacao1"
                            ForeColor="Red"
                            OnServerValidate="ValidaIdade"
                            ></asp:CustomValidator>
                    </div>
                </div>
                <br />
                <div style="display: table-row">
                    <div style="display: table-cell;">
                        Número de Associado
                    </div>
                    <div style="display: table-cell;">
                        <asp:TextBox ID="txtNAssociado" runat="server" style="width:150px;" MaxLength="9"></asp:TextBox>

                        <asp:RegularExpressionValidator ID="revNAssociado" runat="server" 
                            Text="**"
                            ControlToValidate="txtNAssociado"
                            ErrorMessage="** Número de Associado inválido" 
                            ValidationGroup="grupoValidacao1"
                            ForeColor="Red" SetFocusOnError="True" 
                            ValidationExpression="\d{9}">
                        </asp:RegularExpressionValidator>

                        <asp:RequiredFieldValidator ID="rfvtxtNAssociado" runat="server" 
                            ControlToValidate="txtNAssociado" 
                            ValidationGroup="grupoValidacao1"
                            ErrorMessage="** Valor obrigatório" 
                            Text="**"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <div style="display: table-row">
                    <div style="display: table-cell;">
                        &nbsp;   
                    </div>
                    <div style="display: table-cell;">
                        <asp:Button ID="btnContinuar" runat="server" 
                            ValidationGroup="grupoValidacao1"
                            Text="Continuar" style="width:150px;" 
                            OnClick="btnContinuar_Click" />
                    </div>
                </div>

            </div>
            <div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ForeColor="Red" 
                    ValidationGroup="grupoValidacao1" 
                    DisplayMode="List" />
            </div>
            </fieldset>
        </div>
    </form>
</body>
</html>
