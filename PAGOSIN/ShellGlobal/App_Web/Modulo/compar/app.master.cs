using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using DAL;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    #region Constantes

    const string SESION_USUARIO = "SesionUsuario";
    const string PAGINA_LOGIN = "~/Login.aspx";
    const string SESION_MENU = "SesionMenu";

    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session[SESION_USUARIO] != null)
            {
                MembershipUser usuario = (MembershipUser)Session[SESION_USUARIO];
                labelNombreUsuario.Text = usuario.UserName;
            }
            else
            {
                Response.Redirect(PAGINA_LOGIN, true);
            }
        }
    }


    

    protected void LinkCerrarSesion_Click(object sender, EventArgs e)
    {
        // Libera toda la informacion en sesion
        Session.Abandon();
        // Quita toda marca de que el usuario esta autenticado
        FormsAuthentication.SignOut();
        // Redirecciona a la pagina de login
        FormsAuthentication.RedirectToLoginPage();
    }
}
