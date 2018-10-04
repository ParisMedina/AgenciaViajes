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
    public class AlumnosBLL
    {
        OnTourEntities context;

        public AlumnosBLL()
        {
            context = new OnTourEntities();




        }
        //metodos acceso a datos
        [DataObjectMethod(DataObjectMethodType.Insert)]

        public void AgregarAlumno(int alumno_id, string ap_paterno, string ap_materno, string nombre, string rut, DateTime fecha_nacimiento, int curso_id, int apoderado_id)
        {
            ALUMNOS nuevo = new ALUMNOS();

            nuevo.ALUMNOS_ID = alumno_id;
            nuevo.AP_PATERNO = ap_paterno;
            nuevo.AP_MATERNO = ap_materno;
            nuevo.NOMBRE = nombre;
            nuevo.RUT = rut;
            nuevo.FECHA_NAC = fecha_nacimiento;
            nuevo.CURSOS_CURSOS_ID = curso_id;
            nuevo.APODERADOS_APODERADOS_ID = apoderado_id;

            context.ALUMNOS.AddObject(nuevo);
            context.SaveChanges();

        }

        [DataObjectMethod(DataObjectMethodType.Select)]

        public List<ALUMNOS> ConsultaAlumnos()
        {
            return context.ALUMNOS.ToList();
        }

        [DataObjectMethod(DataObjectMethodType.Select)]

        public ALUMNOS ObtenerAlumno(int id) {

            ALUMNOS a = (from em in context.ALUMNOS
                         where em.ALUMNOS_ID == id
                         select em).FirstOrDefault();

            return a;

        }

        [DataObjectMethod(DataObjectMethodType.Delete)]

        public void EliminarAlumno(int id) {
            ALUMNOS a = ObtenerAlumno(id);

            context.ALUMNOS.DeleteObject(a);
            context.SaveChanges();

        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public void ModificarAlumno(int alumno_id, string ap_paterno, string ap_materno, string nombre, string rut, DateTime fecha_nacimiento) {

            ALUMNOS old = ObtenerAlumno(alumno_id);

            old.AP_PATERNO = ap_paterno;
            old.AP_MATERNO = ap_materno;
            old.NOMBRE = nombre;
            old.RUT = rut;
            old.FECHA_NAC = fecha_nacimiento;

            context.SaveChanges();

        }

    }
}
