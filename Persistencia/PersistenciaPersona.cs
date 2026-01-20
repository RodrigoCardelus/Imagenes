using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

using EntidadesCompartidas;

namespace Persistencia
{
    public class PersistenciaPersona
    {
        public static void Agregar(Persona p)
        {
            SqlConnection cnn = new SqlConnection(Constantes.CONEXION);
            SqlCommand cmd = new SqlCommand("sp_Agregar", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cedula", p.Cedula);
            cmd.Parameters.AddWithValue("@Nombre", p.Nombre);
            cmd.Parameters.AddWithValue("@Miniatura", p.Miniatura);
            cmd.Parameters.AddWithValue("@Foto", p.Foto);
            SqlParameter prmRetorno = new SqlParameter();
            prmRetorno.Direction = ParameterDirection.ReturnValue;
            cmd.Parameters.Add(prmRetorno);
            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
            if ((int)prmRetorno.Value == -1)
                throw new Exception("No se pudo agregar, dado que la cédula esta repetida.");
        }

        public static Persona Buscar(string cedula)
        {
            Persona resp = null;
            SqlConnection cnn = new SqlConnection(Constantes.CONEXION);
            SqlCommand cmd = new SqlCommand("sp_Buscar", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Cedula", cedula);
            cnn.Open();
            SqlDataReader lector = cmd.ExecuteReader();
            if (lector.Read())
            {
                resp = new Persona((string)lector[0], (string)lector[1], (string)lector[2], (string)lector[3]);
            }
            cnn.Close();
            return resp;
        }
    }
}
