using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using EntidadesCompartidas;
using Logica;

public partial class AgregarProducto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        try
        {
            //Genero la URL en donde se almacena el archivo
            string urlMiniatura = "~\\Imagenes\\" + fupMiniatura.FileName;
            //Guardo el archivo que está en el cliente, en el SERVER
            //Server.MapPath obtiene la ruta absoluta según este ubicado el proyecto en el server.
            fupMiniatura.SaveAs(Server.MapPath(urlMiniatura));
            //Establezco la ruta al control de imagen para que la muestre.
            imgMiniatura.ImageUrl = urlMiniatura;

            string urlFotoGrande = "~\\Imagenes\\" + fupFotoGrande.FileName;
            fupFotoGrande.SaveAs(Server.MapPath(urlFotoGrande));
            imgFotoGrande.ImageUrl = urlFotoGrande;

            //Tener en cuenta que no se esta controlando nada....
            Persona p = new Persona(txtCedula.Text, txtNombre.Text, urlMiniatura, urlFotoGrande);
            LogicaPersona.Agregar(p);

            lblMensaje.Text = "Se agregó correctamente.";
        }
        catch (Exception ex)
        { lblMensaje.Text = ex.Message; }
    }
}