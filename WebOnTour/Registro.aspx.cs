using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data.Entity;

namespace WebOnTour
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ApoderadosBLL bllA = new ApoderadosBLL();
            EncargadoBLL bllE = new EncargadoBLL();

            int id = 3;
            int agenteId = 1;
            string username = tbxUsername.Text;
            string password = tbxPassword.Text;
            string email = tbxEmail.Text;
            string nombre = tbxNombre.Text;
            string apellidoP = tbxApellidoP.Text;
            string apellidoM = tbxApellidoM.Text;
            string telefono = tbxTelefono.Text;
            string celular = tbxCelular.Text;

            string tipo = ddlTipoUsuario.SelectedItem.ToString();

            
                    bllA.AgregarApoderados(id, username, email, apellidoP, apellidoM, nombre, telefono, celular, password);
                    lblMensaje.Text = "Agregado con exito";
                    lblMensaje.Visible = true;

             

        }
    }
}