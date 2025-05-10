<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
    <style>
    .container{
      width:30%;
      height:500px;
      border: 2px solid black;
      margin-left:560px;
      box-shadow:2px 10px 0 10px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div style="background-color:teal">
    
        <br />
        <br />
         
         <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 587px; top: 62px; position: absolute; width: 505px; color: #FFFFCC"></asp:Label>
         
        <br />
        <br />
       <div class="container" style="text-align: center; color: #008080; background-color:#FFFAF0; font-weight: 700;">
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 612px; top: 185px; position: absolute; width: 161px; height: 25px;" Text="Username" ForeColor="Gray"></asp:Label>
        <asp:TextBox ID="TextBox1" required runat="server" style="z-index: 1; left: 655px; top: 208px; position: absolute; height: 32px; width: 292px;font-size:15px;" BorderColor="#0066FF" AutoCompleteType="Pager"></asp:TextBox>
           <br />
           <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 575px; top: 108px; position: absolute"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 724px; top: 101px; position: absolute; font-size:30px; text-align:center; font-family:'Bell MT'; width: 143px; " Text="Sign up" ForeColor="#0033CC"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Email" style="z-index: 1; left: 621px; top: 258px; position: absolute; width: 106px; margin-top: 0px;" ForeColor="Gray"></asp:Label>
        <asp:TextBox ID="TextBox2" required runat="server" style="z-index: 1; left: 655px; top: 283px; position: absolute; height: 32px; width: 292px;font-size:15px;" BorderColor="#0066FF"></asp:TextBox>
           <asp:RadioButton ID="RadioButton1" required runat="server" Groupname="r1" style="z-index: 1; left: 652px; top: 147px; position: absolute;font-size:20px; width: 122px; height: 28px; right: 770px;" Text="Admin" />
           <asp:RadioButton ID="RadioButton2" required runat="server"   Groupname="r1" style="z-index: 1; left: 818px; top: 144px; position: absolute;font-size:20px; width: 122px; height: 28px;" Text="User" />
        <br />
        <br />
        <a href="signupgrid.aspx"><asp:Button ID="Button1" runat="server" Text="sign up" OnClick="Button1_Click" style="z-index: 1; left: 656px; top: 423px; position: absolute; width: 298px; height: 40px; font-size:25px; font-family:'Bell MT';background-color:#00CC99" BorderColor="#006600"  /></a>
        <br />
        <br />
        <br />
           <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 646px; top: 331px; position: absolute; width: 88px; height: 19px; color: #808080" Text="Password"></asp:Label>
        <br />
        <br />
        <br />
        <br/>
        <br />
        <br />
           <asp:TextBox ID="TextBox3" required runat="server" style="z-index: 1; left: 656px; top: 352px; position: absolute; height:32px; width: 292px;font-size:15px; margin-left: 0px" BorderColor="#0066FF"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
           <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 633px; top: 468px; position: absolute; width: 246px" Text="Already have an account?"></asp:Label>
           <asp:HyperLink ID="HyperLink1" href="login.aspx" runat="server" style="z-index: 1; left: 852px; top: 464px; position: absolute; color: #0000FF; text-decoration: underline; width: 63px; height: 25px;">Sign in</asp:HyperLink>
        <br />
           <br />
        <br />
           <br />
        <br />
           <asp:HyperLink ID="HyperLink2" href="index.aspx" runat="server" ImageHeight="30px" ImageUrl="~/icons/arrow.png" ImageWidth="30px" style="z-index: 1; left: 513px; top: 554px; position: absolute">HyperLink</asp:HyperLink>
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
