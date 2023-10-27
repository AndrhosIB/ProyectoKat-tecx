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
    public partial class Login : System.Web.UI.Page
    {
            protected void BtnIngresar_Click(object sender, EventArgs e)
        {       
            string Matricula = txtMatricula.Text;
            string conexion = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            if (EsMatriculaValida(Matricula))
            {
                using (SqlConnection connection = new SqlConnection(conexion))
                {
                    connection.Open();
                    // Consulta SQL
                    string query = "SELECT Matricula, Nombre FROM Login WHERE Matricula = @Matricula";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Matricula", Matricula);
                        SqlDataReader reader = command.ExecuteReader();


                        if (reader.Read())
                        {
                            string matricula = reader["Matricula"].ToString();
                            string nombre = reader["Nombre"].ToString();

                            // Guarda matricula y nombre en la sesión
                            Session["Matricula"] = matricula;
                            Session["Nombre"] = nombre;

                            reader.Close();
                            connection.Close();

                            Response.Redirect("index.aspx");
                        }
                        else
                        {
                            // La matrícula no existe en la base de datos
                            lblError.Text = "La matricula es incorrecta";
                        }
                    }
                }
            }
            else
            {
                // La matrícula no existe en la base de datos
                lblError.Text = "La matricula es incorrecta";
            }
        }
        static bool EsMatriculaValida(string matricula)
        {
            // Usar una expresión regular para validar que la matrícula tenga 8 dígitos y solo números
            Regex regex = new Regex("^[0-9]{8}$");
            return regex.IsMatch(matricula);
        }
    }
}