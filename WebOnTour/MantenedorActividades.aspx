<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MantenedorActividades.aspx.cs" Inherits="WebOnTour.MantenedorActividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 23px;
            width: 314px;
        }
        .auto-style3 {
            width: 145px;
        }
        .auto-style4 {
            height: 23px;
            width: 27px;
        }
        .auto-style5 {
            width: 57px;
        }
        .auto-style6 {
            height: 23px;
            width: 375px;
        }
        .auto-style7 {
            width: 375px;
        }
        .auto-style8 {
            width: 314px;
        }
        .auto-style9 {
            width: 183px;
        }
        .auto-style10 {
            width: 1032px;
        }
        .auto-style11 {
            width: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style2"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style8">Mantenedor Actividades</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>        
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>

        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style8">Lista de Actividades</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style8">
                <asp:GridView ID="gvActividades" runat="server"></asp:GridView>
                <asp:EntityDataSource ID="edtActividades" runat="server"></asp:EntityDataSource>

            </td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        </table>
    <table>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">Agregar Actividad</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">Nombre de Actividad</td>
            <td class="auto-style9"><asp:TextBox ID="tbxNombreActividad" runat="server"></asp:TextBox></td>
            <td class="auto-style10"><asp:RequiredFieldValidator ID="rfvNombreActividad" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxNombreActividad" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
            
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style3">Descripcion</td>
            <td class="auto-style9"><asp:TextBox ID="tbxDescripcion" runat="server"></asp:TextBox></td>
            <td class="auto-style10"><asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxDescripcion" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3"></td>
            <td class="auto-style9"><asp:Button ID="btnAgregarActividad" runat="server" Text="Agregar" OnClick="btnAgregarActividad_Click" /></td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3"></td>
            <td class="auto-style9">
                <asp:HyperLink ID="hlActividades" runat="server" NavigateUrl="Administrador.aspx">Volver</asp:HyperLink></td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
