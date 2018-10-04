<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="WebOnTour.Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>Bienvenido Administrador</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnMantenedorActividades" runat="server" Text="Mantenedor Actividades" OnClick="btnMantenedorActividades_Click" /></td>
            <td><asp:Button ID="btnMantenedorDestino" runat="server" Text="Mantenedor Destinos" OnClick="btnMantenedorDestino_Click" /></td>
            <td><asp:Button ID="btnMantenedorClientes" runat="server" Text="Mantenedor Clientes" OnClick="btnMantenedorClientes_Click" /></td>
        </tr>
    </table>
</asp:Content>
