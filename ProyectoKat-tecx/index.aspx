<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ProyectoKat_tecx.index" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Recursos/CSS/styles.css" rel="stylesheet" />
    <title>Kard Teck</title>
</head>

<body>
        <header>
        <a href="index.aspx" class="direccion">
            <img class="logo" src="https://www.logolynx.com/images/logolynx/59/594cf2ee43a70a87c16f45a155f9566c.jpeg" alt="logo itt"/>
        </a>
            <form runat="server">
                <asp:Label CssClass="font-weight-bold texto-negritas" ID="lblAlumno" runat="server"></asp:Label>
                <asp:Label CssClass="font-weight-bold texto-negritas" ID="lblMatricula" runat="server" ></asp:Label>    
                <asp:Label CssClass="font-weight-bold texto-negritas" ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                <asp:Button ID="btnCerrarSesion" runat="server" class="btn btn-danger" Text="Cerrar Sesión" OnClick="CerrarSesion_Click" />
            </form>
             <style>    
                 .texto-negritas {
                 font-weight: bold;
                 }
             </style>
        <nav class="navbar">
            <ul>
                <li>
                    <a class="on" href="#">Carrera +</a>
                    <ul>
                        <li><a class="on" href="Recursos/PagHTML/ksistemas.html" target="contenido">Ing.Sistemas</a></li>
                        <li><a class="off" href="#">Ing.Industrial</a></li>
                        <li><a class="off" href="#">Ing.Aeronautica</a></li>
                        <li><a class="off" href="#">Ing.Mecanica</a></li>
                        <li><a class="off" href="#">Ing.Electromecanica</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>
    <main>
        <iframe name="contenido" frameborder="0"></iframe>
    </main>
    <footer>
        <p>&copy; 2023 Fusión forcé. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
