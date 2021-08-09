<%@ Page Language="C#" AutoEventWireup="true" CodeFile="produtos.aspx.cs" Inherits="produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="sqldados">
            
            <ItemTemplate>

                <table class="auto-style3">
                    <tr>
                    <td rowspan="2">
                        <a href="produtos.aspx?Idprod=<% Eval("Idprod")%>>">
                        <img src="/imagens/" + <% Eval("image")%>/>
                        </a>
                    </td>
                    <td>adasdasd</td>
                    </tr>
                    <tr>
                    <td>gafasf</td>
                    </tr>
                </table>

            </ItemTemplate>

        </asp:DataList>
        

        
        
        

        
        <asp:SqlDataSource ID="sqldados" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [image], [price], [name] FROM [Table]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
