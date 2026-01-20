<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OtroAgregaPersona.aspx.cs" Inherits="OtroAgregaPersona" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div style="text-align: left">
        <br />
        <table border = 1>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30pt" 
                        ForeColor="#006600" Text="Agregar Persona"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Cedula"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Nombre"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Miniatura"></asp:Label>
                    <br />
                    <asp:FileUpload ID="fupMiniatura" runat="server" />
                    <br /><br />
                    <asp:Button ID="btnPrevisualizarMiniatura" runat="server" Text="Previsualizar" 
                        Font-Bold="True" onclick="btnPrevisualizarMiniatura_Click" />
                    </td>
                <td align="center">
                    <asp:Image ID="imgMiniatura" runat="server" Width="100px" />
                    </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Foto Grande"></asp:Label>
                    <br />
                    <asp:FileUpload ID="fupFotoGrande" runat="server" />
                    <br /><br />
                    <asp:Button ID="btnPrevisualizarFotoGrande" runat="server" Text="Previsualizar" 
                        Font-Bold="True" onclick="btnPrevisualizarFotoGrande_Click" />
                    </td>
                <td align="center">
                    <asp:Image ID="imgFotoGrande" runat="server" Width="100px" />
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        PostBackUrl="~/BuscarPersona.aspx">Buscar</asp:LinkButton>
                    </td>
                <td>
                    <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Font-Bold="True" 
                        Width="200px" onclick="btnAgregar_Click" />
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        </div>
    
    </div>
    </form>
</body>
</html>
