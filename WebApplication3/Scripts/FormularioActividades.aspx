<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FormularioActividades.aspx.vb" Inherits="WebApplication3.FormularioActividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;<h3>Actividades</h3>
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
                <asp:BoundField DataField="id_actividad" HeaderText="id_actividad" 
                    ReadOnly="True" SortExpression="id_actividad" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                <asp:BoundField DataField="id_tipo_actividad" HeaderText="id_tipo_actividad" 
                    SortExpression="id_tipo_actividad" />
                <asp:BoundField DataField="privacidad" HeaderText="privacidad" 
                    SortExpression="privacidad" />
                <asp:BoundField DataField="detalle" HeaderText="detalle" 
                    SortExpression="detalle" />
                <asp:BoundField DataField="url" HeaderText="url" SortExpression="url" />
                <asp:BoundField DataField="ip_cliente" HeaderText="ip_cliente" 
                    SortExpression="ip_cliente" />
                <asp:CommandField ShowDeleteButton="True" />
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
</h3>
    &nbsp;</p>
</asp:Content>
