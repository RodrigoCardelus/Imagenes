using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

using Logica;
using EntidadesCompartidas;

public partial class OtroAgregaPersona : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        try
        {
            Persona p = new Persona(txtCedula.Text, txtNombre.Text, imgMiniatura.ImageUrl, imgFotoGrande.ImageUrl);
            LogicaPersona.Agregar(p);

            lblMensaje.Text = "Se agregó correctamente.";
        }
        catch (Exception ex)
        { lblMensaje.Text = ex.Message; }
    }
    protected void btnPrevisualizarMiniatura_Click(object sender, EventArgs e)
    {
        try
        {
            string urlMiniatura = "~\\Imagenes\\" + txtCedula.Text + fupMiniatura.FileName;
            fupMiniatura.SaveAs(Server.MapPath(urlMiniatura));
            imgMiniatura.ImageUrl = urlMiniatura;
        }
        catch (Exception ex)
        { lblMensaje.Text = ex.Message; }
    }
    protected void btnPrevisualizarFotoGrande_Click(object sender, EventArgs e)
    {
        try
        {
            string urlFotoGrande = "~\\Imagenes\\" + txtCedula.Text + fupFotoGrande.FileName;
            fupFotoGrande.SaveAs(Server.MapPath(urlFotoGrande));
            imgFotoGrande.ImageUrl = urlFotoGrande;
        }
        catch (Exception ex)
        { lblMensaje.Text = ex.Message; }
    }
}