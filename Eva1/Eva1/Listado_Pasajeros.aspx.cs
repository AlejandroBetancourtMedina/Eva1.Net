using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eva1
{
    public partial class Listado_de_Pasajeros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Nombre"] != null)
                {
                    string nombre = Session["Nombre"].ToString();
                    LabelNombre.Text = nombre;
                }

                if (Session["Apellido"] != null)
                {
                    string apellido = Session["Apellido"].ToString();
                    LabelApellido.Text = apellido;
                }

                if (Session["Identificacion"] != null)
                {
                    string Identificacion = Session["Identificacion"].ToString();
                    Label_ide.Text = Identificacion;
                }

                if (Session["Pais"] != null)
                {
                    string Pais = Session["Pais"].ToString();
                    LabelPais.Text = Pais;
                }

                if (Session["Pais"] != null)
                {
                    string CodigoReserva = Session["CodigoReserva"].ToString();
                    LabelCodigo.Text = CodigoReserva;
                }


            }

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro_de_Pasajeros.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("Nombre");
            Session.Remove("Apellido");
            Session.Remove("Identificacion");
            Session.Remove("Pais");
            Session.Remove("CodigoReserva");

            
            Response.Redirect("Registro_de_Pasajeros.aspx");
        }
    }
    }
