<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage(Of IEnumerable (Of Kendo.Mvc.UI.MenuItem))" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="indexFeatured" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Kendo UI PanelBar</h3>
    <br />

    <% Html.Kendo().Menu() _
           .Name("Menu") _
        .BindTo(Model) _
     .Render()
    %>
</asp:Content>
