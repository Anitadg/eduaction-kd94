<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
    .container{
     width:30%;
     height:500px;
     border: 2px solid black;
     margin-left:550px;
     box-shadow:2px 10px 0 10px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:teal">
  
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" BorderColor="#FFCCCC" style="z-index: 1;font-size:18px;  left : 588px; top: 55px; position: absolute; width: 495px; height: 32px; color: #FFCC99"></asp:Label>
        <br />
        <br />
       <div class="container" style="text-align: center; color: #008080; background-color: #FFFAF0; font-weight: 700;">
        <asp:Label ID="Label1"  runat="server" style="z-index: 1; left: 610px; top: 214px; position: absolute; width: 161px; height: 25px;" Text="Username" ForeColor="Gray"></asp:Label>
        <asp:TextBox ID="TextBox1" required runat="server" style="z-index: 1; left: 650px; top: 235px; position: absolute; height: 35px; width: 292px;font-size:15px;" BorderColor="#0066FF" AutoCompleteType="Pager"></asp:TextBox>
           <br />
        <br />
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 732px; top: 115px; position: absolute; font-size:30px; text-align:center; font-family:'Bell MT'; width: 143px; " Text="Sign in" ForeColor="#0033CC"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password" style="z-index: 1; left: 633px; top: 302px; position: absolute; width: 106px" ForeColor="Gray"></asp:Label>
        <asp:TextBox ID="TextBox2" required runat="server" style="z-index: 1; left: 650px; top: 325px; position: absolute; height: 32px; width: 292px;font-size:15px;" BorderColor="#0066FF"></asp:TextBox>
           <asp:RadioButton ID="RadioButton1" required runat="server" Groupname="r1" style="z-index: 1; left: 655px; top: 174px; position: absolute;font-size:20px; width: 122px; height: 28px" Text="Admin" OnCheckedChanged="RadioButton1_CheckedChanged1" />
           <asp:RadioButton ID="RadioButton2" required runat="server"   Groupname="r1" style="z-index: 1; left: 820px; top: 174px; position: absolute;font-size:20px; width: 122px; height: 28px;" Text="User" />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" style="z-index: 1; left: 815px; top: 364px; position: absolute; width: 161px; text-align:center; height: 23px;">Forget Password</asp:LinkButton>
        <br />
        <asp:Button ID="Button1" href="enquiry1.aspx" runat="server" Text="Login" OnClick="Button1_Click" style="z-index: 1; left: 650px; top: 429px; position: absolute; width: 292px; height: 45px; right: 597px; font-size:25px; font-family:'Bell MT'; background-color: #00CC99;" BorderColor="#0066FF" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
           <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 652px; top: 377px; position: absolute; height: 22px; width: 61px"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
           <br />
        <br />
           <asp:Label ID="Label5" runat="server" style="z-index: 1; top: 479px; position: absolute; width: 208px; left: 639px" Text="Don't have an account? "></asp:Label>
           <asp:HyperLink ID="HyperLink1" href="signup.aspx" runat="server" style="z-index: 1; left: 866px; top: 480px; position: absolute; color: #0000CC; text-decoration: underline">Signup</asp:HyperLink>
           <asp:HyperLink ID="HyperLink2" href="index.aspx" runat="server" ImageHeight="30px" ImageUrl="~/icons/arrow.png" ImageWidth="30px" style="z-index: 1; left: 512px; top: 548px; position: absolute">HyperLink</asp:HyperLink>
        </div>
           <br />
           <br />
        <br />
        <br />
        <br />
        <br />
           <br />
        <br />
        <br />
        <br />
        <br />
        <br />
     
    </div>
    </form>
</body>
</html>
