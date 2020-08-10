<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateForm.aspx.cs" Inherits="ShopGiay.CreateForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="login1.css" />
</head>
<body>
     <div class="loginbox">
            <img src="login/pic1.png" class="avatar" />
            <h1>Create Login </h1>
              <form id="form1" runat="server">
                <p>Username</p>
                <asp:TextBox ID="txtTaikhoan" runat="server" placeholder="Enter Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Không được để trống" ControlToValidate="txtTaikhoan"></asp:RequiredFieldValidator>
                <p>Password</p>
                <asp:TextBox ID="txtMatkhau" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>

                    <p>Retype Password</p>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Password" TextMode="Password" ></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not match" ControlToValidate="TextBox1" ControlToCompare="txtMatkhau"></asp:CompareValidator>
                 
                 <p>Phone</p>
                 <asp:TextBox ID="txtSDT" runat="server" placeholder="Enter phone number"  ></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Phải là kiểu số" ValidationExpression="^[0-9]{10}$" ControlToValidate="txtSDT"></asp:RegularExpressionValidator>

                  <p>Email</p>
                  <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email"  ></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Saiđinhangemail" ValidationExpression="^[a-zA-Z0-9_\-\.]+@([a-zA-Z0-9_\-\.]+\.[a-zA-Z]{2,5})$" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                  <p>Image 3x4</p>
                  <asp:FileUpload ID="FileUpload1" runat="server" />
                  <asp:Button ID="btnTaoTK" runat="server" Text="Tạo Tài Khoản " OnClick="btnTaoTK_Click" />
                  <asp:Label ID="lblkq" runat="server" ForeColor="Lime"></asp:Label>
                   <a href="LoginForm.aspx">Already have an account ?</a>
                  
            </form>
           
    </div>
</body>
</html>
