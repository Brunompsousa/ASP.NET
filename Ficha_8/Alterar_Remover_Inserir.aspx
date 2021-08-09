<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alterar_Remover_Inserir.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="dSProdutos" runat="server" ConnectionString="<%$ ConnectionStrings:CSmyBD %>" SelectCommand="SELECT * FROM [Produto]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dSEditar" runat="server" ConnectionString="<%$ ConnectionStrings:CSmyBD %>" DeleteCommand="DELETE FROM [Produto] WHERE [idproduto] = @idproduto" InsertCommand="INSERT INTO [Produto] ([idproduto], [nome], [tipo], [preco], [descrisao], [imagem]) VALUES (@idproduto, @nome, @tipo, @preco, @descrisao, @imagem)" SelectCommand="SELECT * FROM [Produto] WHERE ([idproduto] = @idproduto)" UpdateCommand="UPDATE [Produto] SET [nome] = @nome, [tipo] = @tipo, [preco] = @preco, [descrisao] = @descrisao, [imagem] = @imagem WHERE [idproduto] = @idproduto">
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
            <SelectParameters>
                <asp:ControlParameter ControlID="GvProdutos" Name="idproduto" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="tipo" Type="String" />
                <asp:Parameter Name="preco" Type="String" />
                <asp:Parameter Name="descrisao" Type="String" />
                <asp:Parameter Name="imagem" Type="String" />
                <asp:Parameter Name="idproduto" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
        <asp:GridView ID="GvProdutos" runat="server" AutoGenerateColumns="False" DataKeyNames="idproduto" DataSourceID="dSProdutos">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="idproduto" HeaderText="idproduto" ReadOnly="True" SortExpression="idproduto" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" />
                <asp:BoundField DataField="descrisao" HeaderText="descrisao" SortExpression="descrisao" />
                <asp:BoundField DataField="imagem" HeaderText="imagem" SortExpression="imagem" />
            </Columns>
        </asp:GridView>
        <asp:FormView ID="FvEditar" runat="server" DataKeyNames="idproduto" DataSourceID="dSEditar" OnItemDeleted="FvEditar_ItemDeleted" OnItemInserted="FvEditar_ItemInserted" OnItemUpdated="FvEditar_ItemUpdated">
            <EditItemTemplate>
                idproduto:
                <asp:Label ID="idprodutoLabel1" runat="server" Text='<%# Eval("idproduto") %>' />
                <br />
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                tipo:
                <asp:TextBox ID="tipoTextBox" runat="server" Text='<%# Bind("tipo") %>' />
                <br />
                preco:
                <asp:TextBox ID="precoTextBox" runat="server" Text='<%# Bind("preco") %>' />
                <br />
                descrisao:
                <asp:TextBox ID="descrisaoTextBox" runat="server" Text='<%# Bind("descrisao") %>' />
                <br />
                imagem:
                <asp:TextBox ID="imagemTextBox" runat="server" Text='<%# Bind("imagem") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                idproduto:
                <asp:TextBox ID="idprodutoTextBox" runat="server" Text='<%# Bind("idproduto") %>' />
                <br />
                nome:
                <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                tipo:
                <asp:TextBox ID="tipoTextBox" runat="server" Text='<%# Bind("tipo") %>' />
                <br />
                preco:
                <asp:TextBox ID="precoTextBox" runat="server" Text='<%# Bind("preco") %>' />
                <br />
                descrisao:
                <asp:TextBox ID="descrisaoTextBox" runat="server" Text='<%# Bind("descrisao") %>' />
                <br />
                imagem:
                <asp:TextBox ID="imagemTextBox" runat="server" Text='<%# Bind("imagem") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                idproduto:
                <asp:Label ID="idprodutoLabel" runat="server" Text='<%# Eval("idproduto") %>' />
                <br />
                nome:
                <asp:Label ID="nomeLabel" runat="server" Text='<%# Bind("nome") %>' />
                <br />
                tipo:
                <asp:Label ID="tipoLabel" runat="server" Text='<%# Bind("tipo") %>' />
                <br />
                preco:
                <asp:Label ID="precoLabel" runat="server" Text='<%# Bind("preco") %>' />
                <br />
                descrisao:
                <asp:Label ID="descrisaoLabel" runat="server" Text='<%# Bind("descrisao") %>' />
                <br />
                imagem:
                <asp:Label ID="imagemLabel" runat="server" Text='<%# Bind("imagem") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
