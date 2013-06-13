<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FormularioActividades.aspx.vb" Inherits="WebApplication3.FormularioActividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;<h2>Actividades</h2>
    <asp:DropDownList ID="DropDownListUsuarios" runat="server" 
            AutoPostBack="True" DataSourceID="SqlDataSourceUsuarios" 
            DataTextField="username" DataValueField="username" Width="96px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceUsuarios" runat="server" 
            ConnectionString="<%$ ConnectionStrings:LireConnectionString %>" 
            SelectCommand="SELECT * FROM [Usuario]"></asp:SqlDataSource>
        <asp:GridView ID="GridViewActividades" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_actividad" 
            DataSourceID="SqlDataSourceActividades">
            <Columns>
                <asp:BoundField DataField="id_actividad" HeaderText="id actividad" 
                    ReadOnly="True" SortExpression="id_actividad" />
                <asp:BoundField DataField="username" HeaderText="Nombre de usuario" 
                    SortExpression="username" />
                <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                <asp:BoundField DataField="id_tipo_actividad" HeaderText="id Tipo actividad" 
                    SortExpression="id_tipo_actividad" />
                <asp:BoundField DataField="privacidad" HeaderText="Privacidad" 
                    SortExpression="privacidad" />
                <asp:BoundField DataField="detalle" HeaderText="Detalle" 
                    SortExpression="detalle" />
                <asp:BoundField DataField="url" HeaderText="Url" SortExpression="url" />
                <asp:BoundField DataField="ip_cliente" HeaderText="Ip del cliente" 
                    SortExpression="ip_cliente" />
                <asp:CommandField ShowSelectButton="True"   />

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceActividades" runat="server" 
            ConnectionString="<%$ ConnectionStrings:LireConnectionString %>" 
            DeleteCommand="DELETE FROM [Actividad] WHERE [id_actividad] = @id_actividad" 
            InsertCommand="INSERT INTO [Actividad] ([id_actividad], [username], [fecha], [id_tipo_actividad], [privacidad], [detalle], [url], [ip_cliente]) VALUES (@id_actividad, @username, @fecha, @id_tipo_actividad, @privacidad, @detalle, @url, @ip_cliente)" 
            SelectCommand="SELECT * FROM [Actividad] WHERE (([username] = @username) AND ([username] = @username2))" 
            
        UpdateCommand="UPDATE [Actividad] SET [username] = @username, [fecha] = @fecha, [id_tipo_actividad] = @id_tipo_actividad, [privacidad] = @privacidad, [detalle] = @detalle, [url] = @url, [ip_cliente] = @ip_cliente WHERE [id_actividad] = @id_actividad">
            <DeleteParameters>
                <asp:Parameter Name="id_actividad" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_actividad" Type="Decimal" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter DbType="Date" Name="fecha" />
                <asp:Parameter Name="id_tipo_actividad" Type="Decimal" />
                <asp:Parameter Name="privacidad" Type="Decimal" />
                <asp:Parameter Name="detalle" Type="String" />
                <asp:Parameter Name="url" Type="String" />
                <asp:Parameter Name="ip_cliente" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListUsuarios" Name="username" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownListUsuarios" Name="username2" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter DbType="Date" Name="fecha" />
                <asp:Parameter Name="id_tipo_actividad" Type="Decimal" />
                <asp:Parameter Name="privacidad" Type="Decimal" />
                <asp:Parameter Name="detalle" Type="String" />
                <asp:Parameter Name="url" Type="String" />
                <asp:Parameter Name="ip_cliente" Type="String" />
                <asp:Parameter Name="id_actividad" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>

    &nbsp;<asp:FormView ID="FormViewAvtividad" runat="server" DataKeyNames="id_actividad" 
        DataSourceID="SqlDataSourceActividad2">
        <EditItemTemplate>
            id_actividad:
            <asp:Label ID="id_actividadLabel1" runat="server" 
                Text='<%# Eval("id_actividad") %>' />
            <br />
            username:
            <asp:TextBox ID="usernameTextBox" runat="server" 
                Text='<%# Bind("username") %>' />
            <br />
            fecha:
            <asp:TextBox ID="fechaTextBox" runat="server" Text='<%# Bind("fecha") %>' />
            <br />
            id_tipo_actividad:
            <asp:TextBox ID="id_tipo_actividadTextBox" runat="server" 
                Text='<%# Bind("id_tipo_actividad") %>' />
            <br />
            privacidad:
            <asp:TextBox ID="privacidadTextBox" runat="server" 
                Text='<%# Bind("privacidad") %>' />
            <br />
            detalle:
            <asp:TextBox ID="detalleTextBox" runat="server" Text='<%# Bind("detalle") %>' />
            <br />
            url:
            <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
            <br />
            ip_cliente:
            <asp:TextBox ID="ip_clienteTextBox" runat="server" 
                Text='<%# Bind("ip_cliente") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            username:
            <asp:TextBox ID="usernameTextBox" runat="server" 
                Text='<%# Bind("username") %>' />
            <br />
            fecha:
            <asp:TextBox ID="fechaTextBox" runat="server" Text='<%# Bind("fecha") %>' />
            <br />
            id_tipo_actividad:
            <asp:TextBox ID="id_tipo_actividadTextBox" runat="server" 
                Text='<%# Bind("id_tipo_actividad") %>' />
            <br />
            privacidad:
            <asp:TextBox ID="privacidadTextBox" runat="server" 
                Text='<%# Bind("privacidad") %>' />
            <br />
            detalle:
            <asp:TextBox ID="detalleTextBox" runat="server" Text='<%# Bind("detalle") %>' />
            <br />
            url:
            <asp:TextBox ID="urlTextBox" runat="server" Text='<%# Bind("url") %>' />
            <br />
            ip_cliente:
            <asp:TextBox ID="ip_clienteTextBox" runat="server" 
                Text='<%# Bind("ip_cliente") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
        <table>
            <tr>
           <td>  id_actividad:</td> 
            <td><asp:Label ID="id_actividadLabel" runat="server" 
                Text='<%# Eval("id_actividad") %>' /></td>
            </tr>
            <tr>
            <td>username:</td>
           <td> <asp:Label ID="usernameLabel" runat="server" Text='<%# Bind("username") %>' /></td>
            </tr>
           <tr>
            <td> fecha:</td> 
            <td> <asp:Label ID="fechaLabel" runat="server" Text='<%# Bind("fecha") %>' /></td> 
            </tr>
            <tr>
            <td> id_tipo_actividad:</td> 
            <td> <asp:Label ID="id_tipo_actividadLabel" runat="server" 
                Text='<%# Bind("id_tipo_actividad") %>' /></td> 
           </tr>
           <tr>
            <td> privacidad:</td> 
           <td> <asp:Label ID="privacidadLabel" runat="server" 
                Text='<%# Bind("privacidad") %>' /></td> 
           </tr>
           <tr>
            <td> detalle:</td> 
            <td> <asp:Label ID="detalleLabel" runat="server" Text='<%# Bind("detalle") %>' /></td> 
            </tr>
            <tr>
            <td> url:</td> 
            <td> <asp:Label ID="urlLabel" runat="server" Text='<%# Bind("url") %>' /></td> 
           </tr>
           <tr>
            <td> ip_cliente:</td> 
           <td>  <asp:Label ID="ip_clienteLabel" runat="server" 
                Text='<%# Bind("ip_cliente") %>' /></td> 
            </tr>
            <tr>
            <td> </td> 
            <td> &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Eliminar"  onclientclick="return confirm(&quot;Seguro  que desea eliminar ?&quot;);" />
            &nbsp;</td> 
             </table>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceActividad2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LireConnectionString %>" 
        DeleteCommand="DELETE FROM [Actividad] WHERE [id_actividad] = @id_actividad" 
        InsertCommand="INSERT INTO [Actividad] ([username], [fecha], [id_tipo_actividad], [privacidad], [detalle], [url], [ip_cliente]) VALUES (@username, @fecha, @id_tipo_actividad, @privacidad, @detalle, @url, @ip_cliente)" 
        SelectCommand="SELECT * FROM [Actividad] WHERE ([id_actividad] = @id_actividad)" 
        UpdateCommand="UPDATE [Actividad] SET [username] = @username, [fecha] = @fecha, [id_tipo_actividad] = @id_tipo_actividad, [privacidad] = @privacidad, [detalle] = @detalle, [url] = @url, [ip_cliente] = @ip_cliente WHERE [id_actividad] = @id_actividad">
        <DeleteParameters>
            <asp:Parameter Name="id_actividad" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="id_tipo_actividad" Type="Decimal" />
            <asp:Parameter Name="privacidad" Type="Decimal" />
            <asp:Parameter Name="detalle" Type="String" />
            <asp:Parameter Name="url" Type="String" />
            <asp:Parameter Name="ip_cliente" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="id_actividad" SessionField="idActividad" 
                Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter DbType="Date" Name="fecha" />
            <asp:Parameter Name="id_tipo_actividad" Type="Decimal" />
            <asp:Parameter Name="privacidad" Type="Decimal" />
            <asp:Parameter Name="detalle" Type="String" />
            <asp:Parameter Name="url" Type="String" />
            <asp:Parameter Name="ip_cliente" Type="String" />
            <asp:Parameter Name="id_actividad" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </p>
</asp:Content>
