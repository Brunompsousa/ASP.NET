<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar_Remover.aspx.cs" Inherits="Alterar_Remover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="dSProdutos" runat="server" ConnectionString="<%$ ConnectionStrings:CSmyBD %>"
            DeleteCommand="DELETE FROM [Produto] WHERE [idproduto] = @idproduto"
            InsertCommand="INSERT INTO [Produto] ([idproduto], [nome], [tipo], [preco], [descrisao], [imagem]) VALUES (@idproduto, @nome, @tipo, @preco, @descrisao, @imagem)" 
            SelectCommand="SELECT * FROM [Produto]"
            UpdateCommand="UPDATE [Produto] SET [nome] = @nome, [tipo] = @tipo, [preco] = @preco, [descrisao] = @descrisao, [imagem] = @imagem WHERE [idproduto] = @idproduto">
            <DeleteParameters>
                <asp:Parameter Name="idproduto" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idproduto" Type="Int32" />
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="tipo" Type="String" />
                <asp:Parameter Name="preco" Type="String" />
                <asp:Parameter Name="descrisao" Type="String" />
                <asp:Parameter Name="imagem" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="tipo" Type="String" />
                <asp:Parameter Name="preco" Type="String" />
                <asp:Parameter Name="descrisao" Type="String" />
                <asp:Parameter Name="imagem" Type="String" />
                <asp:Parameter Name="idproduto" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
        <asp:GridView ID="GvProdutos" runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="idproduto"
            DataSourceID="dSProdutos">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
