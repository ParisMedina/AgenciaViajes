using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebOnTour
{
    public partial class Apoderado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistroAlumnos_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroAlumno.aspx");
        }
    }
}