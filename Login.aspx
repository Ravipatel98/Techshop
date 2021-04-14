<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MidWebsite.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
     <title>Welcome to Shop</title>
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/signin.css" rel="stylesheet" />
    <style>
        body {
    background-image: url('Images/loginbg.png');
}
    </style>
</head>
<body>
<div class="container">
        <form class="form-signin" runat="server">
            <h3 class="alert alert-success">User Login</h3>
            <label for="inputEmail" class="sr-only">User Name</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="User Name" runat="server" />
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="text" runat="server" id="inputPassword" class="form-control" placeholder="Password" />
            <asp:Button runat="server" CssClass="btn btn-lg btn-success btn-block" 
                Text="Sign In" ID="btnLogin" OnClick="btnLogin_Click" />
            <asp:Button runat="server" CssClass="btn btn-lg btn-success btn-block" 
                Text="Sign up" ID="Button2" OnClick="Button2_Click" />
        </form>

    </div>
</body>
</html>
