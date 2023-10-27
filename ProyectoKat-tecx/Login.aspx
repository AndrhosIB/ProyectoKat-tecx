<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoKat_tecx.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link href="Recursos/CSS/login.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body class="bg-light">
    <div class="principal">
        <div class="form-content">
            <form id="form_login" runat="server">
                <div class="form-control">
                    <div class="col-md-6 text-center mb-5">
                        <asp:Label CssClass="h3" class="heading-section" ID="lblBienvenida" runat="server" Text="Bienvenido"></asp:Label>
                    </div>
                    <div>
                        <asp:Label ID="lblMatricula" runat="server" Text="Matricula:"></asp:Label>
                        <asp:TextBox ID="txtMatricula" CssClass="form-control" runat="server" placeholder="00000000"></asp:TextBox>
                    </div>
                    <hr />
                    <div class="row">
                        <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button ID="BtnIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" OnClick="BtnIngresar_Click" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
