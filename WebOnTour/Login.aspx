<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebOnTour.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 77px;
        }
        .auto-style3 {
            margin-left: 78px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="input-group">
    <asp:Panel ID="Panel1" runat="server" Height="184px" Width="548px">
        Iniciar Sesion
        <br />
        <br />
       <table>
           <tr>
               <td class="auto-style2">Usuario:</td>
               <td><asp:TextBox ID="txtUsuario" runat="server" Width="156px"></asp:TextBox></td>
           </tr>
            <tr>
               <td class="auto-style2">Contraseña:</td>
               <td><asp:TextBox ID="txtContraseña" runat="server" Width="156px"></asp:TextBox></td>
           </tr>
           <tr>
               <td></td>
               <td>
                   <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="auto-style3" Width="86px" OnClick="btnIngresar_Click" /></td>
           </tr>
           <tr>
               <td></td>
               <td>
                   <asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="Inicio.aspx">Volver</asp:HyperLink></td>
           </tr>



       </table>


       
    </asp:Panel>
        </div>
</asp:Content>
