<%@ Page Language="VB" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="contactTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Contact - My ASP.NET MVC Application
</asp:Content>

<asp:Content ID="contactContent" ContentPlaceHolderID="MainContent" runat="server">
    <hgroup class="title">
        <h1>Contact.</h1>
        <h2><%: ViewBag.Message %></h2>
    </hgroup>

    <h3>Kendo UI TabStrip</h3>
    <br />

    

    <%    Html.Kendo().TabStrip() _
        .Name("ContactsTabStrip") _
        .Items(Sub(items)
            items.Add() _
                .Text("Phone") _
                .Selected(true) _
                .Content(Sub()
                %>
                    <p>
                        <span class="label">Main:</span>
                        <span>425.555.0100</span>
                    </p>
                    <p>
                        <span class="label">After Hours:</span>
                        <span>425.555.0199</span>
                    </p>
                <%
                End Sub) _
                .ContentHtmlAttributes(New With { .style = "min-height: 200px" })
            items.Add() _
                .Text("Email") _
                .Content(Sub()
                %>
                    <p>
                        <span class="label">Support:</span>
                        <span><a href="mailto:Support@example.com">Support@example.com</a></span>
                    </p>
                    <p>
                        <span class="label">Marketing:</span>
                        <span><a href="mailto:Marketing@example.com">Marketing@example.com</a></span>
                    </p>
                    <p>
                        <span class="label">General:</span>
                        <span><a href="mailto:General@example.com">General@example.com</a></span>
                    </p>
                <%
                End Sub) _
                .ContentHtmlAttributes(New With { .style = "min-height: 200px" })
            items.Add() _
                .Text("Address") _
                .Content(Sub()
                %>
                    <p>
                        One Microsoft Way<br />
                        Redmond, WA 98052-6399
                    </p>
                <%
                End Sub) _
                .ContentHtmlAttributes(New With { .style = "min-height: 200px" })
        End Sub).Render()
    %>
</asp:Content>
