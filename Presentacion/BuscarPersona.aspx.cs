using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;
using Logica;

public partial class BuscarPersona : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Buscar_Click(object sender, EventArgs e)
    {
        try
        {
            Persona p = LogicaPersona.Buscar(txtCedula.Text);
            if (p == null)
            {
                lblMensaje.Text = "No se ha encontrado una persona con la cédula: " + txtCedula.Text;
                imgFotoGrande.ImageUrl = "";
                imgMiniatura.ImageUrl = "";
                txtNombre.Text = "";
            }
            else
            {
                txtNombre.Text = p.Nombre;
                imgMiniatura.ImageUrl = p.Miniatura;
                imgFotoGrande.ImageUrl = p.Foto;
                lblMensaje.Text = "";
            }
        }
        catch (Exception ex)
        { lblMensaje.Text = ex.Message; }
    }
}