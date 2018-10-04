using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOnTour
{
    public partial class Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMantenedorActividades_Click(object sender, EventArgs e)
        {
            Response.Redirect("MantenedorActividades.aspx");
        }

        protected void btnMantenedorDestino_Click(object sender, EventArgs e)
        {
            Response.Redirect("MantenedorDestino.aspx");
        }

        protected void btnMantenedorClientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("MantenedorCliente.aspx");
        }
    }
}