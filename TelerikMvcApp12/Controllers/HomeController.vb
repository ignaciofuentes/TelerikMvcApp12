
Imports Kendo.Mvc.UI
Public Class HomeController
    Inherits System.Web.Mvc.Controller

    Function Index() As ActionResult
        ViewData("Message") = "Welcome to ASP.NET MVC!"

        Dim items = New List(Of MenuItem)()
        Dim firstItem = New MenuItem()
        firstItem.Text = "Products"
        Dim ChildItem = New MenuItem()
        ChildItem.Text = "Red"
        firstItem.Items.Add(ChildItem)

        Dim secondItem = New MenuItem()
        secondItem.Text = "Stores"



        items.Add(firstItem)
        items.Add(secondItem)



        Return View(items)
    End Function

    Function About() As ActionResult
        ViewData("Message") = "Your app description page."

        Return View()
    End Function

    Function Contact() As ActionResult
        ViewData("Message") = "Your contact page."

        Return View()
    End Function

End Class
