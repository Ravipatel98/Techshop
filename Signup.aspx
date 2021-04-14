<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="MidWebsite.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>WELCOME TO USER REGISTRATION</title>
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/signin.css" rel="stylesheet" />
    <style>
        body {
    background-image: url('Images/lib.jpg');
}
    </style>
</head>
<body>
<div class="container">
        <form class="form-signin" runat="server">
            <h3 class="alert alert-success">User Registration</h3>
           
            
              <label for="Email" class="sr-only">Email</label>
              <input type="text" id="Email" class="form-control" placeholder=" Email" runat="server" required autofocus />

            


            <label for="UserPassword" class="sr-only">Password</label>
            <input type="password" runat="server" id="UserPassword" class="form-control" placeholder="Password"
                required />


            <asp:Button runat="server" CssClass="btn btn-lg btn-success btn-block" 
                Text="Sign Up" ID="btnRegister" OnClick="btnRegister_Click" />
            
        </form>

    </div>
</body>

