<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BuscarPersona.aspx.cs" Inherits="BuscarPersona" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left">
        <br />
        <table border = 1>
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30pt" 
                        ForeColor="#006600" Text="Buscar Persona" Width="400px"></asp:Label>
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
                <td align="center" valign="middle">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Miniatura"></asp:Label>
                    <br />
                    </td>
                <td align="center" valign="middle">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Foto Grande"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Image ID="imgMiniatura" runat="server" Width="100px" />
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
                        PostBackUrl="~/AgregarPersona.aspx">Agregar</asp:LinkButton>
                    </td>
                <td align="center">
                    <asp:Button ID="Buscar" runat="server" Text="Buscar" Font-Bold="True" 
                        Width="200px" onclick="Buscar_Click" />
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        </div>
    <div>
    
    </div>
    </form>
</body>
</html>
