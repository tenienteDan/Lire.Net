<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FormularioTipoAvtividad.aspx.vb" Inherits="WebApplication3.FormularioTipoAvtividad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Tipos de actividades<asp:GridView ID="GridViewTipoActividad" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="id_tipo_actividad" 
            DataSourceID="SqlDataSourceTipoActividad" AllowPaging="True" 
            AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="id_tipo_actividad" HeaderText="id_tipo_actividad" 
                    InsertVisible="False" ReadOnly="True" SortExpression="id_tipo_actividad" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" 
                    SortExpression="nombre" />
                <asp:BoundField DataField="decripcion" HeaderText="decripcion" 
                    SortExpression="decripcion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceTipoActividad" runat="server" 
            ConnectionString="<%$ ConnectionStrings:LireConnectionString %>" 
            DeleteCommand="DELETE FROM [Tipo_Actividad] WHERE [id_tipo_actividad] = @id_tipo_actividad" 
            InsertCommand="INSERT INTO [Tipo_Actividad] ([nombre], [decripcion]) VALUES (@nombre, @decripcion)" 
            SelectCommand="SELECT * FROM [Tipo_Actividad] ORDER BY [id_tipo_actividad]" 
            UpdateCommand="UPDATE [Tipo_Actividad] SET [nombre] = @nombre, [decripcion] = @decripcion WHERE [id_tipo_actividad] = @id_tipo_actividad">
            <DeleteParameters>
                <asp:Parameter Name="id_tipo_actividad" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="decripcion" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="decripcion" Type="String" />
                <asp:Parameter Name="id_tipo_actividad" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
