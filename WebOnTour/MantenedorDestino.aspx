<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MantenedorDestino.aspx.cs" Inherits="WebOnTour.MantenedorDestino" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 194px;
        }
        .auto-style3 {
            width: 1092px;
        }
        .auto-style4 {
            width: 3px;
        }
        .auto-style5 {
            width: 48px;
        }
        .auto-style6 {
            width: 199px;
        }
        .auto-style7 {
            width: 201px;
        }
        .auto-style8 {
            width: 70px;
        }
        .auto-style9 {
            width: 157px;
        }
        .auto-style10 {
            width: 3px;
            height: 33px;
        }
        .auto-style11 {
            width: 70px;
            height: 33px;
        }
        .auto-style12 {
            width: 201px;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style8"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">Mantenedor Destinos</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>        
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>

        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style11">Lista de Destinos</td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">
                <asp:GridView ID="gvDestinos" runat="server"></asp:GridView>
                <asp:EntityDataSource ID="edtDestinos" runat="server"></asp:EntityDataSource>

            </td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        </table>
    <table>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">Agregar Destino</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style1">Nombre de Ciudad de Destino</td>
            <td class="auto-style9"><asp:TextBox ID="tbxNombreCiudad" runat="server" Width="146px"></asp:TextBox></td>
            <td class="auto-style3"><asp:RequiredFieldValidator ID="rfvNombreCiudad" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxNombreCiudad" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
            
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style1">Pais</td>
            <td class="auto-style9"><asp:TextBox ID="tbxPais" runat="server" Width="144px"></asp:TextBox></td>
            <td class="auto-style3"><asp:RequiredFieldValidator ID="rfvPais" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxPais" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1"></td>
            <td class="auto-style9"><asp:Button ID="btnAgregarDestino" runat="server" Text="Agregar" OnClick="btnAgregarActividad_Click" /></td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style9"><asp:HyperLink ID="hlDestino" runat="server" NavigateUrl="Administrador.aspx">Volver</asp:HyperLink></td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
