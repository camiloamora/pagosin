<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="App_Web_Modulo_compar_Login" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="Styles/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="Styles/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="Styles/grid.css" type="text/css" media="screen"> 
</head>
<body>
    <form id="form1" runat="server">
    <!--==============================header=================================-->
    <header>
    	<div class="menu-row">
        	<div class="main">
            	<nav class="wrapper">
                    <div class="logo">
                        </div>
                </nav>
            </div>
        </div>
    </header>
        <section id="content">
        <div class="main">
            <div class="container_12">
                <div class="wrapper">
                    <article>
                        <h3>Autenticación de usuarios libranzas.</h3>
                        <div class="border">
                               <table style="margin:0 0 0 40px;">
                                   <tr>
                                       <td colspan="2">
                                           <p>
                                       <b>Login</b>
                                               </p>
                                           </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2">
                                           <p>
                                           Ingrese el nombre usuario y contraseña
                                               </p>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>
                                           Usuario:
                                       </td>
                                       <td>
                                           <dx:ASPxTextBox ID="txtUsuario" runat="server" Width="170px">
                                               <ValidationSettings Display="Dynamic">
                                                   <RequiredField IsRequired="True" />
                                               </ValidationSettings>
                                           </dx:ASPxTextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>
                                           Contraseña:
                                       </td>
                                       <td>
                                           <dx:ASPxTextBox ID="txtContraseña" runat="server" Width="170px" Password="True">
                                               <ValidationSettings Display="Dynamic">
                                                   <RequiredField IsRequired="True" />
                                               </ValidationSettings>
                                           </dx:ASPxTextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2">
                                           <asp:Label ID="labelError" runat="server" Text="Label" Visible="false" CssClass="errorLogin"></asp:Label>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2" style="padding:10px 0 0 70px; ">
                                           <dx:ASPxButton ID="btnIngresar" runat="server" Text="Ingresar" CssClass="botonGuardar" EnableDefaultAppearance="false" OnClick="btnIngresar_Click"></dx:ASPxButton>
                                       </td>
                                   </tr>
                               </table>
                        </div>
                    </article>

                </div>
            </div>
        </div>
    </section>
        <footer>
        <!--<div class="footerLogin">-->
        	<div class="aligncenter">
            	<p class="p0">Ajc  &copy; 2012 </p>
                Pagina Ajc <a href="" target="_blank" rel="nofollow" />www.ajc.com</a>
            </div>
        <!--</div>-->
            </footer>
    </form>
</body>
</html>
