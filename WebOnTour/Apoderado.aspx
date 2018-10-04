<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Apoderado.aspx.cs" Inherits="WebOnTour.Apoderado" %>
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
        <td>Bienvenido Apoderado</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>Mis Alumnos:</td>
        <td>&nbsp;</td>
    </tr>    
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:GridView ID="gvApoderados" runat="server"></asp:GridView>
            <asp:EntityDataSource ID="edsApoderados" runat="server"></asp:EntityDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td> <asp:Button ID="btnRegistroAlumnos" runat="server" Text="Registrar Alumno" OnClick="btnRegistroAlumnos_Click" /> </td>
        <td>&nbsp;</td>
    </tr>
        
</table>
</asp:Content>
