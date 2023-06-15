using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eva1
{
    public partial class Registro_de_Pasajeros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombre = idNombre.Text;
            string apellido = IdApellido.Text;
            string identificacion = IdIdentificacion.Text;
            string pais = ddlOpciones.SelectedValue;
            string codigoReserva = idCodReserva.Text;

            Session["Nombre"] = nombre;
            Session["Apellido"] = apellido;
            Session["Identificacion"] = identificacion;
            Session["Pais"] = pais;
            Session["CodigoReserva"] = codigoReserva;

            Response.Redirect("Listado_pasajeros.aspx");
        }
    }
}