<%@ Page Language="C#" CodeBehind="Formulario.aspx.cs" Inherits="PruebaPractricaDotNet.Formulario" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head runat="server">
    <title>Formulario</title>
</head>
<body>
<form id="HtmlForm" runat="server">
    <div>
        <label>Nombre del usuario</label>
        <asp:TextBox runat="server" ID="tbUsuario"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbUsuario"
                                    ErrorMessage="El nombre de usuario es requerido para enviar la peticion al servidor"/>

        <label>Contrseña</label>
        <asp:TextBox runat="server" ID="tbContrasenia" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ControlToValidate="tbContrasenia"
                                    ErrorMessage="La contraseña es requerida para enviar la peticion al servidor"/>
        
        <asp:Button runat="server" ID="btnEnviar" Text="Enviar" OnClick="Enviar" />
    </div>
</form>
</body>
</html>