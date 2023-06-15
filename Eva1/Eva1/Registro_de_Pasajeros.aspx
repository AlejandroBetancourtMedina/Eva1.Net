<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro_de_Pasajeros.aspx.cs" Inherits="Eva1.Registro_de_Pasajeros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        height: 30px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>
        Ingreso de Datos</h2>
   
        <table style="width:79%;">
            <tr>
                <td>Nombre:</td>
                <td>
                    <asp:TextBox ID="idNombre" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ValNombre" runat="server" BackColor="White" ControlToValidate="idNombre" ErrorMessage="Requerido" ForeColor="Red" ValidationGroup="DatosIngresados" BorderColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="ValidaNombre" runat="server" ControlToValidate="idNombre" ValidationExpression="^.{0,15}$" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Apellido:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="IdApellido" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valApellidos" runat="server" ErrorMessage="Requerido" BackColor="White" ControlToValidate="IdApellido" ForeColor="Red" ValidationGroup="DatosIngresados" BorderColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="comparacion" runat="server" BackColor="White" BorderStyle="None" ControlToCompare="idNombre" ControlToValidate="IdApellido" ErrorMessage="Nombre y Apellido deben ser diferentes" ForeColor="Red" Operator="NotEqual" ValidationGroup="DatosIngresados" ValueToCompare="rangoNombre" Width="275px" BorderColor="Red">*</asp:CompareValidator>
                    <asp:RegularExpressionValidator ID="ValidaApellido" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="IdApellido" ValidationExpression="^.{0,15}$"></asp:RegularExpressionValidator>
                </td>
           </tr>
            <tr>
                <td> Identificacion:</td>
                <td>
                    <asp:TextBox ID="IdIdentificacion" runat="server" BackColor="White"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valIdentificacion" runat="server" ErrorMessage="Requerido" BackColor="White" ControlToValidate="IdIdentificacion" ForeColor="Red" ValidationGroup="DatosIngresados">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="validaRango" runat="server" BackColor="White" ControlToValidate="IdIdentificacion" ErrorMessage="Identificacion: Debe contener rango entre 100000 y 999999999" ForeColor="Red" MaximumValue="999999999" MinimumValue="100000" Type="Integer" ValidationGroup="DatosIngresados" BorderColor="Red">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"> Pais de Origen:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlOpciones" runat="server">
                            <asp:ListItem Text="Seleccione una opción" Value=""></asp:ListItem>
                            <asp:ListItem Text="Argentina" Value="Argentina"></asp:ListItem>
                            <asp:ListItem Text="Bolivia" Value="Bolivia"></asp:ListItem>
                            <asp:ListItem Text="Brasil" Value="Brasil"></asp:ListItem>
                            <asp:ListItem Text="Chile" Value="Chile"></asp:ListItem>
                            <asp:ListItem Text="Perú" Value="Perú"></asp:ListItem>
                            <asp:ListItem Text="Uruguay" Value="Uruguay"></asp:ListItem>
                            <asp:ListItem Text="Otros" Value="Otros"></asp:ListItem>
                            </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="idpais" runat="server" BackColor="White" BorderColor="White" ControlToValidate="ddlOpciones" ErrorMessage="Selecciona un pais." ForeColor="Red" InitialValue="" ValidationGroup="DatosIngresados">*</asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
               <td> Código de reserva:</td>
                    <td>
                        <asp:TextBox ID="idCodReserva" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="valCodReserva" runat="server" ErrorMessage="Requerido" BackColor="White" ControlToValidate="idCodReserva" ForeColor="Red" ValidationGroup="DatosIngresados" BorderColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="formato" runat="server" BackColor="White" ControlToValidate="idCodReserva" ErrorMessage="Código de reserva inválido" ForeColor="Red" ValidationExpression="[A-Za-z]{3}\d{3}" ValidationGroup="DatosIngresados" Visible="False" BorderColor="Red">*</asp:RegularExpressionValidator>
                    </td>

            </tr>
            <tr>
                <td colspan="2"> 
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" Width="109px" OnClick="Button1_Click" ValidationGroup="DatosIngresados" /></td>
            </tr>
              
        </table>
  

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#FF3300" ForeColor="#0000CC" ValidationGroup="DatosIngresados" />

</asp:Content>
