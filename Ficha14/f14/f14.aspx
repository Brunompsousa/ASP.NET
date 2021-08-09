<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f14.aspx.cs" Inherits="f14" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            width: 104px;
        }
        .auto-style5 {
            width: 848px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Hotel - Reserva de Quartos</h2>
        <p>Numero de pessoas
            <asp:TextBox ID="txbnump" runat="server"></asp:TextBox>
        </p>
        <table class="auto-style1">
            <tr>
                <td>Pretende quartos</td>
                <td>Conforto</td>
                <td>Refeições - Buffet</td>
                <td>Serviços associdos</td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True" Value="1">Simple (50 Euros)</asp:ListItem>
                        <asp:ListItem Value="2">Duplo (70 Euros)</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True" Value="1">Turistico</asp:ListItem>
                        <asp:ListItem Value="2">Executivo (+50%)</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="1">Pequeno Almoço</asp:ListItem>
                        <asp:ListItem Value="2">Almoço</asp:ListItem>
                        <asp:ListItem Value="3">Jantar</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="1"> Transporte de Aeroporto (10Euros)</asp:ListItem>
                        <asp:ListItem Value="2">Sauna (10Euros)</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            </table>
        

        <table class="auto-style1">
            <tr>
                <td>Data de Entrada 
                    <asp:TextBox ID="txbdataentrada" type="date" runat="server"></asp:TextBox>
                </td>
                <td>Numero de Noites
                    <asp:TextBox ID="txbnoites" runat="server"></asp:TextBox>
                </td>
                <td>Tipo de Reserva
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True" Value="10">Particular</asp:ListItem>
                        <asp:ListItem Value="5">Empresarial</asp:ListItem>
                        <asp:ListItem Value="0">Instituciona</asp:ListItem>
                        <asp:ListItem Value="0">Associativo</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                    <br />
                </td>
                <td aria-orientation="horizontal" rowspan="5">Pré-Reserva<br />
                    <asp:TextBox ID="TextBox5" runat="server" Height="206px" Width="358px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Custo Total </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Descontos&nbsp; </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Custo Final </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
        

    </div>
    </form>
</body>
</html>
