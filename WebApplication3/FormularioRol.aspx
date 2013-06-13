<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FormularioRol.aspx.vb" Inherits="WebApplication3.FormularioRol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Roles<asp:GridView ID="GridViewRol" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id_rol" 
            DataSourceID="SqlDataSourceRol">
            <Columns>
                <asp:BoundField DataField="id_rol" HeaderText="id Rol" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id_rol" />
                <asp:BoundField DataField="nombre" HeaderText="Nombre" 
                    SortExpression="nombre" />
                <asp:BoundField DataField="descripcion" HeaderText="Descripcion" 
                    SortExpression="descripcion" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceRol" runat="server" 
            ConnectionString="<%$ ConnectionStrings:LireConnectionString %>" 
            SelectCommand="SELECT * FROM [Rol] ORDER BY [id_rol]"></asp:SqlDataSource>
    </p>
</asp:Content>
