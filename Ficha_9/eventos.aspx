<%@ Page Language="C#" AutoEventWireup="true" CodeFile="eventos.aspx.cs" Inherits="eventos" EnableEventValidation="true"   %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        Distritos:
        <asp:DropDownList ID="dropdistrito" runat="server" AutoPostBack="True" 
            DataSourceID="sqldistrito" 
            DataTextField="distrito" 
            AppendDataBoundItems="True"
            DataValueField="iddistrito" OnSelectedIndexChanged="dropdistrito_SelectedIndexChanged">
            
        </asp:DropDownList>
        <asp:SqlDataSource ID="sqldistrito" runat="server" ConnectionString="<%$ ConnectionStrings:exer9 %>" 
            SelectCommand="SELECT * FROM [Distritos] ORDER BY [distrito]"></asp:SqlDataSource>
    <div>
    
        Localidades:
    
        <asp:DropDownList ID="droplocalidade" runat="server" AutoPostBack="True"
             DataSourceID="sqllocalidade" 
            AppendDataBoundItems="True"
            DataTextField="localidade" DataValueField="localidade" OnSelectedIndexChanged="droplocalidade_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="sqllocalidade" runat="server" ConnectionString="<%$ ConnectionStrings:exer9 %>" SelectCommand="SELECT [localidade], [idlocalidade] FROM [Localidades] WHERE ([iddistrito] = @iddistrito) ORDER BY [localidade]">
            <SelectParameters>
                <asp:ControlParameter ControlID="dropdistrito" Name="iddistrito" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        Eventos:
        <asp:DropDownList ID="dropevento"
            AppendDataBoundItems="True" runat="server" AutoPostBack="True" DataSourceID="sqleventos" DataTextField="nomeEvento" DataValueField="idevento" OnSelectedIndexChanged="dropevento_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="sqleventos" runat="server" ConnectionString="<%$ ConnectionStrings:exer9 %>" SelectCommand="SELECT * FROM [Eventos] WHERE ([localidade] LIKE '%' + @localidade + '%') ORDER BY [idevento]">
            <SelectParameters>
                <asp:ControlParameter ControlID="droplocalidade" Name="localidade" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="auto-style1">
            <asp:Button ID="bntInscrever" runat="server" Enabled="False" Text="Inscrever" />
        </div>
    </form>
</body>
</html>
