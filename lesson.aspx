<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lesson.aspx.cs" Inherits="lesson" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
      .heading{
        width:100;
        height:60px;
        border:1px solid darkseagreen;
        box-shadow:2px 5px 10px 2px;
        }
      .container{
       height:600px;
       border:2px solid darkseagreen;
       box-shadow: 2px 5px 10px 2px;
       color:darkolivegreen;
       /*background-color:darkseagreen*/
      }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #f5f5f5">
    <div class="container">

        <div class="heading">  
        <asp:Label ID="Label1" runat="server" Text="LESSON" style="z-index: 1;text-align:center;font-size:25px; left: 721px; top: 31px; position: absolute; width: 141px; height: 34px; font-weight: 700;" ForeColor="#333333"  ></asp:Label>
      </div>
             <br />
             <br />
             <br />
             <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 404px; top: 96px; position: absolute; width: 60px"></asp:Label>
             <br />
                 
             <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 576px; top: 155px; position: absolute; width: 165px; height: 28px" Text="COURSE NAME"></asp:Label>
                 
             <br />
           <asp:TextBox ID="TextBox1" required runat="server" style="z-index: 1; left: 740px; top: 200px; position: absolute; width: 156px; height: 23px;"></asp:TextBox>
           <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 743px; top: 245px; position: absolute; width: 155px; height: 21px;"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 583px; font-size:18px; top: 287px; position: absolute" Text="File Type"></asp:Label>
            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 581px; font-size:18px; top: 239px; position: absolute; width: 98px;">TITLE</asp:Label>
            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 585px; font-size:18px; top: 338px; position: absolute; height: 24px; bottom: 295px; width: 61px;" Text="File"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1;font-size:15px; left: 741px; top: 335px; position: absolute" Enabled="False" />
            <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 590px; font-size:18px; top: 379px; position: absolute; width: 49px" Text="Url"></asp:Label>
    
            <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 579px; top: 199px; position: absolute; height: 27px; width: 96px" Text="CHAPTER"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 743px; top: 380px; position: absolute; width: 151px; height: 19px;" Enabled="False"></asp:TextBox>
    
            <asp:Button ID="Button1" runat="server" Height="41px" style="z-index: 1; left: 661px; top: 434px; position: absolute; width: 215px;font-size:15px; color: #FFFFFF; background-color: #009900" Text="Submit" OnClick="Button1_Click" />
    
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" style="z-index: 1; left: 742px; top: 293px;font-size:16px; position: absolute; height: 27px; width: 161px">
                <asp:ListItem>--Please Select--</asp:ListItem>
                <asp:ListItem>PDF</asp:ListItem>
                <asp:ListItem>URL</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" style="z-index: 1;font-size:16px; left: 740px; top: 157px; position: absolute; height: 29px; width: 161px" AutoPostBack="True">
                <asp:ListItem>--Please Select--</asp:ListItem>
                <asp:ListItem>Python</asp:ListItem>
                <asp:ListItem>C++</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
    
            </div>
    </div>
    </form>
</body>
</html>
