<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroAlumno.aspx.cs" Inherits="WebOnTour.RegistroAlumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="290px">
        <b>Registo de Alumno</b>
        <b/>

        <b/>

        <b/>

        <table class="auto-style1">
            
            <tr>
                <td>Nombre</td>
                <td>
                    <asp:TextBox ID="tbxNombre" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxNombre" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> 
                    <asp:CompareValidator ID="cvNombre" runat="server" ErrorMessage="* Ingrese nombre valido" ControlToValidate="tbxNombre" Display="Dynamic" ForeColor="Red" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>
                
                </td>
            </tr>
            <tr>
                <td>Apellido Paterno</td>
                <td>
                    <asp:TextBox ID="tbxApellidoP" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvApellidoP" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxApellidoP" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvApellidoP" runat="server" ErrorMessage="* Ingrese un Apellido valido" ControlToValidate="tbxApellidoP" Display="Dynamic" ForeColor="Red" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>
                
                </td>
            </tr>
            <tr>
                <td>Apellido Materno</td>
                <td>
                    <asp:TextBox ID="tbxApellidoM" runat="server"></asp:TextBox></td>
                <td><asp:CompareValidator ID="cvApellidoM" runat="server" ErrorMessage="* Ingrese un Apellido valido" ControlToValidate="tbxApellidoM" Display="Dynamic" ForeColor="Red" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>RUT</td>
                <td>
                    <asp:TextBox ID="tbxUsername" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxUsername" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
                <td>Fecha Nacimiento</td>
                <td>
                    <asp:Calendar ID="cal1" runat="server"></asp:Calendar></td>
                <td><asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="cal1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
                <td>Curso</td>
                <td>
                    <asp:TextBox ID="tbxEmail" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxEmail" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Ingrese un correo valido" ControlToValidate="tbxEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </td>
                </tr>
           
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" Width="128px" /></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:HyperLink ID="hlAlumno" runat="server" NavigateUrl="Apoderado.aspx">Volver</asp:HyperLink></td>
                <td></td>
            </tr>


        </table>
        
        
        
    </asp:Panel>
</asp:Content>
