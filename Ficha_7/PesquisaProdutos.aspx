<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PesquisaProdutos.aspx.cs" Inherits="PesquisaProdutos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CSmyBD %>" SelectCommand="SELECT * FROM [Produto] WHERE ([tipo] LIKE '%' + @tipo + '%')" OnSelected="dSProdutos_Selected">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtPesquisa" Name="tipo" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Tipo de Produto:"></asp:Label>
&nbsp;<asp:TextBox ID="txtPesquisa" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="t" runat="server" Text="Quant. Produto: "></asp:Label>
        &nbsp;<asp:Label ID="lblQntResults" runat="server" Text="[]" ondatabinding="Page_Load"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="idproduto" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="idproduto" HeaderText="idproduto" ReadOnly="True" SortExpression="idproduto" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" />
                <asp:BoundField DataField="descrisao" HeaderText="descrisao" SortExpression="descrisao" />
                <asp:BoundField DataField="imagem" HeaderText="imagem" SortExpression="imagem" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
