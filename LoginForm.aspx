<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ShopGiay.LoginForm" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="login.css" />
</head>
<body>
        <div class="loginbox">
            <img src="login/pic1.png" class="avatar" />
            <h1>Login here</h1>
              <form id="form1" runat="server">
                <p>Username</p>
                <asp:TextBox ID="txtTaikhoan" runat="server" placeholder="Enter Username"></asp:TextBox>
                <p>Password</p>
                <asp:TextBox ID="txtMatkhau" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                  <br />
                  <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
                  <asp:Label ID="lblkq" runat="server" Text=""></asp:Label><br/>
                <a href="#">Lost your account ?</a><br />
                  <a href="CreateForm.aspx">Don't have an account ?</a>
            </form>
           
    </div>
</body>
</html>
