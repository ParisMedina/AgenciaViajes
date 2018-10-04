using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;
using System.ComponentModel;


namespace Negocio
{
    [DataObject]
    public class ApoderadosBLL
    {
        
        OnTourEntities context;

        public ApoderadosBLL()
        {
            context = new OnTourEntities();
        }

        //Metodos acceso datos
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AgregarApoderados(int apoderado_id, string username, string email, string ap_paterno, string ap_materno, string nombre, string telefono, string celular, string password) {

            APODERADOS nuevo = new APODERADOS();
            nuevo.APODERADOS_ID = apoderado_id;
            nuevo.USERNAME = username;
            nuevo.EMAIL = email;
            nuevo.AP_PATERNO = ap_paterno;
            nuevo.AP_MATERNO = ap_materno;
            nuevo.NOMBRE = nombre;
            nuevo.TELEFONO = telefono;
            nuevo.CELULAR = celular;
            nuevo.PASSWORD = password;

            context.APODERADOS.AddObject(nuevo);
            context.SaveChanges();

        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<APODERADOS> ConsultaApoderados() {
            return context.APODERADOS.ToList();
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public APODERADOS ObtenerApoderado(int id) {

            APODERADOS a = (from em in context.APODERADOS
                            where em.APODERADOS_ID == id
                            select em).FirstOrDefault();

            return a;
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public void EliminarApoderado(int id) {
            APODERADOS a = ObtenerApoderado(id);
            context.APODERADOS.DeleteObject(a);
            context.SaveChanges();

        }
        [DataObjectMethod(DataObjectMethodType.Update)]

        public void ModificaApoderado(int apoderado_id, string username, string email, string ap_paterno, string ap_materno, string nombre, string telefono, string celular, string password) {

            APODERADOS old = ObtenerApoderado(apoderado_id);


            old.USERNAME = username;
            old.EMAIL = email;
            old.AP_PATERNO = ap_paterno;
            old.AP_MATERNO = ap_materno;
            old.NOMBRE = nombre;
            old.TELEFONO = telefono;
            old.CELULAR = celular;
            old.PASSWORD = password;

            context.SaveChanges();

        }


    }
}
