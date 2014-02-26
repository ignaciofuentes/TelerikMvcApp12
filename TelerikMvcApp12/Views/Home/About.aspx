<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="aboutTitle" ContentPlaceHolderID="TitleContent" runat="server">
    About - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>About.</h1>
        <h2><%: ViewBag.Message %></h2>
    </hgroup>

    <article>
        <p>
            Use this area to provide additional information.
        </p>

        <p>
            Use this area to provide additional information.
        </p>

        <p>
            Use this area to provide additional information.
        </p>
    </article>

    <aside>
        <h3>Kendo UI TreeView</h3>
        <p>
            Use this area to provide additional information.
        </p>

        <%= Html.Kendo().TreeView() _
            .Name("LinksTreeView") _
            .Items(Sub(items)
                items.Add() _
                    .Text("Home") _
                    .Action("Index", "Home")
                items.Add() _
                    .Text("About") _
                    .Action("About", "Home")
                items.Add() _
                    .Text("Contact") _
                    .Action("Contact", "Home")
            End Sub)
        %>
    </aside>
</asp:Content>

