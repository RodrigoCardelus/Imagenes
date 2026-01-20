using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using EntidadesCompartidas;
using Persistencia;

namespace Logica
{
    public class LogicaPersona
    {
        public static void Agregar(Persona p)
        { PersistenciaPersona.Agregar(p); }

        public static Persona Buscar(string cedula)
        { return PersistenciaPersona.Buscar(cedula); }
    }
}
