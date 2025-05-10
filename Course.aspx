<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course</title>
   
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #CCFFCC; font-weight: 700;">
    
        <asp:Label ID="Label6" runat="server" style="z-index: 1;text-align:center;font-size:32px; left: 755px; top: 34px; position: absolute; width: 271px; height: 38px" Text="Course Details"></asp:Label>
        <br />
    
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 540px; top: 104px; position: absolute; width: 110px; font-size:20px; height: 25px" Text="Course ID"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" required runat="server" style="z-index: 1; left: 702px; top: 100px; position: absolute; width: 157px; height: 32px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 538px; top: 160px; position: absolute; width: 119px; height: 28px; font-size:20px;" Text="Course Name"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 888px; top: 104px;width: 59px; font-size:20px; position: absolute" Text="Date"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 549px; top: 254px; position: absolute; bottom: 384px; font-size:20px;" Text="Content"></asp:Label>
        <asp:TextBox ID="TextBox2" required runat="server" style="z-index: 1; left: 702px; top: 156px; position: absolute; height: 32px; width: 426px"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" required runat="server" style="z-index: 1; left: 702px; top: 214px; position: absolute; width: 431px; margin-top: 2px; height: 78px;"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 906px; top: 353px; position: absolute; font-size:20px; height: 25px; width: 45px;" Text="Fee"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 549px; top: 348px; position: absolute; width: 90px; height: 25px; font-size:20px; margin-top: 0px;" Text="Duration"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox4" required runat="server" style="z-index: 1; left: 705px; top: 352px; position: absolute; width: 150px; height: 26px"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 702px; top: 493px; position: absolute; width: 436px; height: 50px; font-weight: 700; color: #FFFFFF; right: 381px; text-align: center;font-size:30px; font-family: 'Bell MT'; background-color: #006600;" Text="Submit" OnClick="Button1_Click" />
        <br />
        <asp:TextBox ID="TextBox6" required runat="server" style="z-index: 1; left: 949px; top: 100px;height: 32px;width: 177px; position: absolute" TextMode="Date"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox5" required runat="server" style="z-index: 1; left: 972px; top: 344px; width:150px;height:26px; position: absolute; "></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 546px; top: 420px; position: absolute; font-size:20px; width: 136px; height: 25px" Text="Course Image"></asp:Label>
        <br />
        <asp:FileUpload ID="FileUpload1" required runat="server" style="z-index: 1; left: 702px; top: 415px; position: absolute; height: 41px; width: 441px" />
        <br />
        <br />
        <br />
        <br />
        
        <asp:HyperLink ID="HyperLink1" href="index.aspx" runat="server" ImageHeight="40px" ImageUrl="~/icons/arrow.png" ImageWidth="50px" style="z-index: 1; left: 554px; top: 505px; position: absolute">Previous</asp:HyperLink>
        
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
        <br />
        <br />
    
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
