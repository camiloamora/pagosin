using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using System.Web.Security;

public partial class App_Web_Modulo_compar_Default : System.Web.UI.Page
{
    #region constantes

    const string ABREVIADO = "Abreviado";
    const string DESCRIPCION = "Descripcion";
    const string ID = "Id";
    const string NOMBRE_FUERZA = "Nombre";
    const string EMPTY_ROW = "No hay cuotas asignadas";
    const string NUMERO_MES = "NumeroMes";
    const string SESION_USUARIO = "SesionUsuario";
    const string PAGE_LOGIN = "~/Login.aspx";
    const string LISTA_MOVIMIENTOS = "ListaMovimientos";
    const string FCUOTA = "FCuota";
    const string VALOR = "Valor";
	
    #endregion

    protected void Page_Load(object sender, EventArgs e)
    {
            if (!IsPostBack)
            {
                CargarCbGrado();
                CargarCbFuerza();
                CargarCbDpto();
                CargarCbAno();
                CargarCbMes();
                grid.SettingsText.EmptyDataRow = EMPTY_ROW;
                txtUsuario.Enabled = false;
                MembershipUser user = (MembershipUser)Session[SESION_USUARIO];
                txtUsuario.Text = user.UserName;
                txtFechaAfiliacion.MaxDate = DateTime.Now;
                CargaCbTerminacionMes();
                CargarCbTerminacionAno();
            }
    }

    private void CargarCbTerminacionAno()
    {
        using (PAGOSIN dal = new PAGOSIN())
        {
            cbAnoTerminacion.TextField = DESCRIPCION;
            cbAnoTerminacion.ValueField = ID;
            cbAnoTerminacion.DataSource = dal.Ano_SelectAll();
            cbAnoTerminacion.DataBind();
            cbAnoTerminacion.SelectedIndex = 0;
        }
    }

    private void CargaCbTerminacionMes()
    {
        using (PAGOSIN dal = new PAGOSIN())
        {
            cbMesTerminacion.TextField = NUMERO_MES;
            cbMesTerminacion.ValueField = ID;
            cbMesTerminacion.DataSource = dal.Mes_SelectAll();
            cbMesTerminacion.DataBind();
            cbMesTerminacion.SelectedIndex = 0;
        }
    }

    private void CargarCbMes()
    {
        using (PAGOSIN dal = new PAGOSIN())
        {
            cbMes.TextField = NUMERO_MES;
            cbMes.ValueField = ID;
            cbMes.DataSource = dal.Mes_SelectAll();
            cbMes.DataBind();
            cbMes.SelectedIndex = 0;
        }
    }

    private void CargarCbAno()
    {
        using (PAGOSIN dal = new PAGOSIN())
        {
            cbAno.TextField = DESCRIPCION;
            cbAno.ValueField = ID;
            cbAno.DataSource = dal.Ano_SelectAll();
            cbAno.DataBind();
            cbAno.SelectedIndex = 0;
        }
    }

    private void CargarCbDpto()
    {
        using (PAGOSIN dal = new PAGOSIN())
        {
            cbDptoAfiliacion.TextField = DESCRIPCION;
            cbDptoAfiliacion.ValueField = ID;
            cbDptoAfiliacion.DataSource = dal.Dpto_SelectAll();
            cbDptoAfiliacion.DataBind();
            cbDptoAfiliacion.SelectedIndex = 0;
        }
    }

    private void CargarCbFuerza()
    {
        using (PAGOSIN dal = new PAGOSIN())
        {
            cbFuerza.TextField = NOMBRE_FUERZA;
            cbFuerza.ValueField = ID;
            cbFuerza.DataSource = dal.Fuerza_SelectAll();
            cbFuerza.DataBind();
            cbFuerza.SelectedIndex = 0;
        }
    }

    private void CargarCbGrado()
    {
        using (PAGOSIN dal = new PAGOSIN())
        {
            cbGrado.TextField = ABREVIADO;
            cbGrado.ValueField = ID;
            cbGrado.DataSource = dal.Grado_SelectAll();
            cbGrado.DataBind();
            cbGrado.SelectedIndex = 0;
        }
    }

    protected void grid_Load(object sender, EventArgs e)
    {
        grid.DataSource = Session[LISTA_MOVIMIENTOS];
        grid.DataBind();

    }
    protected void grid_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
    {
        
    }

    protected void grid_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e)
    {

    }
    protected void grid_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e)
    {
        List<Movimientos_SelectAll_Result> listaMovimientos = new List<Movimientos_SelectAll_Result>();
        Guid IdMovimiento = Guid.NewGuid();
        string fCuota = e.NewValues[FCUOTA].ToString();
        Double valor = Convert.ToDouble(e.NewValues[VALOR].ToString());
        listaMovimientos.Add(new Movimientos_SelectAll_Result { Id = IdMovimiento, FCuota = fCuota, Valor = valor });
        Session[LISTA_MOVIMIENTOS] = listaMovimientos;
        e.Cancel = true;
        grid.CancelEdit();
    }
}