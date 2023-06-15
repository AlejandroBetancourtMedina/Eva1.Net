<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Listado_Pasajeros.aspx.cs" Inherits="Eva1.Listado_de_Pasajeros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        Listado de pasajero</h2>
    
     <table style="width:79%;">
            <tr>
                <td>Nombre:</td>
                <td>
                    <asp:Label ID="LabelNombre" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Apellido:</td>
                <td class="auto-style2">
                    <asp:Label ID="LabelApellido" runat="server"></asp:Label>
                </td>
           </tr>
            <tr>
                <td> Identificacion:</td>
                <td>
                    <asp:Label ID="Label_ide" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"> Pais de Origen:</td>
                <td class="auto-style2">
                    <asp:Label ID="LabelPais" runat="server"></asp:Label>

                </td>
            </tr>
            <tr>
               <td> Código de reserva:</td>
                    <td>
                        <asp:Label ID="LabelCodigo" runat="server"></asp:Label>
                    </td>

            </tr>
            <tr>
                <td colspan="2"> 
                   <asp:Button ID="btnVolver" runat="server" Text="Volver" Width="105px" OnClick="btnVolver_Click" />
                    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Borrar" Width="106px" />
                </td>
            </tr>
              
        </table>
     
    
    
</asp:Content>
