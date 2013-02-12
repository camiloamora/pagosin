<%@ Page Title="" Language="C#" MasterPageFile="~/App_Web/Modulo/compar/app.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="App_Web_Modulo_compar_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v12.1, Version=12.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxRoundPanel" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v12.1, Version=12.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <dx:ASPxRoundPanel ID="RoundPanelLibranzas" runat="server" Width="900px" HeaderText="Ingreso de libranzas">
        <PanelCollection>
            <dx:PanelContent>
                <table>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="LabelEstado" runat="server" Text="Estado:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtEstado" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelLibranza" runat="server" Text="Libranza:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtLibranza" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelGrado" runat="server" Text="Grado:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbGrado" runat="server" ValueType="System.String" Theme="PlasticBlue"></dx:ASPxComboBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="LabelPrimerApellido" runat="server" Text="Primer apellido:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtPrimerApellido" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelSegundoApellido" runat="server" Text="Segundo apellido:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtSegundoApellido" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelPrimerNombre" runat="server" Text="Primer nombre:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtPrimerNombre" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="LabelSegundoNombre" runat="server" Text="Segundo nombre:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtSegundoNombre" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelCedula" runat="server" Text="Cedula:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtCedula" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelCodigoMilitar" runat="server" Text="Código militar:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtCodigoMilitar" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="LabelFuerza" runat="server" Text="Fuerza:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbFuerza" runat="server" ValueType="System.String" Theme="PlasticBlue"></dx:ASPxComboBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelFechaNacimiento" runat="server" Text="Fecha de nacimiento:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxDateEdit ID="txtFechaNacimiento" runat="server" Theme="PlasticBlue"></dx:ASPxDateEdit>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelTelefono1" runat="server" Text="Télefono 1:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtTelefono1" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="LabelTelefono2" runat="server" Text="Télefono 2:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtTelefono2" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelTelefonoFijo" runat="server" Text="Télefono fijo:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtTelefonoFijo" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelEmail" runat="server" Text="Email:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtEmail" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="LabelCiudadAfiliacion" runat="server" Text="Ciudad afiliación:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtCiudadAfiliacion" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelDtpoAfiliacion" runat="server" Text="Departamento afiliación:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbDptoAfiliacion" runat="server" ValueType="System.String" Theme="PlasticBlue"></dx:ASPxComboBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelFechaAfiliacion" runat="server" Text="Fecha afiliación:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxDateEdit ID="txtFechaAfiliacion" runat="server" Theme="PlasticBlue"></dx:ASPxDateEdit>
                        </td>

                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="LabelInicioDescuento" runat="server" Text="Inicio descuento libranza:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxDateEdit ID="txtInicioDescuento" runat="server" Theme="PlasticBlue"></dx:ASPxDateEdit>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelinicioDescuentoMDN" runat="server" Text="Inicio descuento MDN:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="labelMes" runat="server" Text="Mes:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbMes" runat="server" ValueType="System.String" Width="100px" Theme="PlasticBlue"></dx:ASPxComboBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="labelAño" runat="server" Text="Año:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbAno" runat="server" ValueType="System.String" Width="100px" Theme="PlasticBlue"></dx:ASPxComboBox>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="LabelTerminacionMDN" runat="server" Text="Terminación descuento MDN:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelTerminacion" runat="server" Text="Mes:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbMesTerminacion" runat="server" ValueType="System.String" Width="100px" Theme="PlasticBlue"></dx:ASPxComboBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelTerminacionAño" runat="server" Text="Año:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="cbAnoTerminacion" runat="server" ValueType="System.String" Width="100px" Theme="PlasticBlue"></dx:ASPxComboBox>
                        </td>
                        <td>
                            <dx:ASPxLabel ID="LabelUsuario" runat="server" Text="Usuario:"></dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtUsuario" runat="server" Width="170px"></dx:ASPxTextBox>
                        </td>
                    </tr>
                </table>
                <div style="padding: 0.6em 0.6em 0.6em 0.6em; left: 300px; position: relative;">
                    <dx:ASPxGridView ID="grid" runat="server" Theme="PlasticBlue" AutoGenerateColumns="False" 
                        >
                        <Columns>
                            <dx:GridViewCommandColumn ButtonType="Image" ShowInCustomizationForm="True" VisibleIndex="0">
                                <EditButton Visible="True">
                                    <Image Url="~/images/Edit.jpg">
                                    </Image>
                                </EditButton>
                                <NewButton Visible="True">
                                    <Image Url="~/images/Nuevo.png">
                                    </Image>
                                </NewButton>
                                <DeleteButton Visible="True">
                                    <Image Url="~/images/Cancel.jpg">
                                    </Image>
                                </DeleteButton>
                                <CancelButton>
                                    <Image Url="~/images/Cancel.jpg">
                                    </Image>
                                </CancelButton>
                                <UpdateButton>
                                    <Image Url="~/images/update.jpg">
                                    </Image>
                                </UpdateButton>
                                <ClearFilterButton>
                                    <Image Url="~/images/Cancel.jpg">
                                    </Image>
                                </ClearFilterButton>
                            </dx:GridViewCommandColumn>
                            <dx:GridViewDataTextColumn Caption="FCuota" FieldName="FCuota" ShowInCustomizationForm="True" VisibleIndex="1">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Valor" FieldName="Valor" ShowInCustomizationForm="True" VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                    </dx:ASPxGridView>
                </div>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
</asp:Content>

