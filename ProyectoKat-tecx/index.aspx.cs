using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoKat_tecx
{
    public partial class index : System.Web.UI.Page
    {

        public void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            if (!IsPostBack)
            {
                if (Session["Matricula"] != null)
                {
                    string matricula = Session["Matricula"].ToString();
                    string nombre = Session["Nombre"].ToString();
                    lblMatricula.Text = matricula;
                    lblAlumno.Text = nombre + ": ";
                }
                else
                {
                    lblError.Text = "Debe iniciar sesión para acceder a esta página.";
                    lblError.Visible = true;
                    Response.Redirect("Login.aspx");
                }
            }
        }
        protected void CerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            // Cierra la sesión del usuario
            Session.Abandon();

            // Redirige al formulario de inicio de sesión
            Response.Redirect("Login.aspx");
        }
    }
}