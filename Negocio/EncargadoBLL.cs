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
    public class EncargadoBLL
    {
        OnTourEntities context;

        public EncargadoBLL()
        {
            context = new OnTourEntities();
        }

        //Metodos acceso de datos 
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public void AgregarEncargados(int id, string nombre, string ap_paterno, string username, string email, string password, string telefono, int agente_id) {

            ENCARGADOS nuevo = new ENCARGADOS();

            nuevo.ENCARGADOS_ID = id;
            nuevo.NOMBRE = nombre;
            nuevo.AP_PATERNO = ap_paterno;
            nuevo.USERNAME = username;
            nuevo.EMAIL = email;
            nuevo.PASSWORD = password;
            nuevo.TELEFONO = telefono;
            nuevo.AGENTE_AGENTE_ID = agente_id;

            context.ENCARGADOS.AddObject(nuevo);
            context.SaveChanges();

        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<ENCARGADOS> ConsultaEncargado() {
            return context.ENCARGADOS.ToList();
            
        }
        [DataObjectMethod(DataObjectMethodType.Select)]
        public ENCARGADOS ObtenerEncargado(int id) {

            ENCARGADOS e = (from em in context.ENCARGADOS
                            where em.ENCARGADOS_ID == id
                            select em).FirstOrDefault();

            return e;

        }

        [DataObjectMethod(DataObjectMethodType.Delete)]

        public void EliminarEncargado(int id){
            ENCARGADOS e = ObtenerEncargado(id);
            context.ENCARGADOS.DeleteObject(e);
            context.SaveChanges();



        }
        [DataObjectMethod(DataObjectMethodType.Update)]
        public void ModificarEncargado(int id, string nombre, string ap_paterno, string username, string email, string password, string telefono) {

            ENCARGADOS old = ObtenerEncargado(id);

            old.ENCARGADOS_ID = id;
            old.NOMBRE = nombre;
            old.AP_PATERNO = ap_paterno;
            old.USERNAME = username;
            old.EMAIL = email;
            old.PASSWORD = password;
            old.TELEFONO = telefono;

            context.SaveChanges();

        }


    }
}
