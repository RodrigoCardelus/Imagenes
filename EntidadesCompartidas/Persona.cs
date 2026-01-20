using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace EntidadesCompartidas
{
    public class Persona
    {
        string cedula;
        string nombre;
        string miniatura;
        string foto;

        public string Cedula
        {
            set { cedula = value; }
            get { return cedula; }
        }
        public string Nombre
        {
            set { nombre = value; }
            get { return nombre; }
        }
        public string Miniatura
        {
            set { miniatura = value; }
            get { return miniatura; }
        }
        public string Foto
        {
            set { foto = value; }
            get { return foto; }
        }

        public Persona(string pCedula, string pNombre, string pMiniatura, string pFoto)
        {
            Cedula = pCedula;
            Nombre = pNombre;
            Miniatura = pMiniatura;
            Foto = pFoto;
        }
    }
}
