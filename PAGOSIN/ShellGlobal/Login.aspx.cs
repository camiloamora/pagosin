using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class App_Web_Modulo_compar_Login : System.Web.UI.Page
{
    #region Constantes

    const string SESION_USUARIO = "SesionUsuario";
    const string DEFAULT_PAGE = "~/App_Web/Modulo/compar/Default.aspx";

	#endregion
    

    #region Metodos

    #endregion

    #region Eventos

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        try
        {
            //Valido el usuario contra el membership
            if (Membership.ValidateUser(txtUsuario.Text, txtContraseña.Text))
            {
                // Recupero el usuario autenticado del membership
                MembershipUser user = Membership.GetUser(txtUsuario.Text);
                FormsAuthentication.RedirectFromLoginPage(user.UserName, true);
                //Subo a sesión el usuario
                Session[SESION_USUARIO] = user;
                Response.Redirect(DEFAULT_PAGE, true);
            }
            else
            {
                labelError.Text = "Usuario o contraseña incorrecta";
                labelError.Visible = true;
            }
        }
        catch (Exception)
        {
            labelError.Text = "Usuario o contraseña incorrecta";
            labelError.Visible = true;
        }
    }
	 
    #endregion
  
}