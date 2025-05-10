<%@ Page Language="C#" AutoEventWireup="true" CodeFile="coursegrid.aspx.cs" Inherits="coursegrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course-Grid</title>
     <style>
    .header{
    background-color:darkslategrey;
    height:70px;
    width:100%;
    display:flex;
    flex-direction:row;
    justify-content:space-between;
    }
    .header>div,
    .header>nav{
    color:white;
    }
   .header>div>h3{
   margin-left:30px;
             z-index: 1;
             left: -3px;
             top: 10px;
             font-size:25px;
             position: absolute;
             height: 20px;
             width: 353px;
             color: #FFFFCC;
         }
    nav>span{
    margin-left:30px;
    margin-top:20px;
    }
    span{
     color:#999999;
             z-index: 1;
             left: 1112px;
             top: 39px;
             position: absolute;
             width: 94px;
             height: 30px;
         }
    span>img{
    color:wheat;
    width:30px;
    height:30px;
    }
    .main-container{
    width:100%;
    height:650px;
    display:flex;
    flex-direction:row;
    }
    .main-container .left-sec{
    width:17%;
    height:600px;
    background-color:darkslategrey;
    display:flex;
    flex-direction:column;
    color:whitesmoke;
    top:120px;

    }
    .main-container .right-sec{
       width:80%;
       height:600px;
       margin-left:15px;
       background-color:whitesmoke;
       z-index: 1;
       left: 275px;
       position: absolute;
       top: 127px;
       border:1px solid darkseagreen;
       box-shadow:2px 5px 10px 2px;
      }
      .left-sec>span,
      .left-sec>span>a,
      .left-sec>span>i>a{
      font-size:18px;
      color:wheat;
      cursor:pointer;
      text-decoration:none;
    }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div class="header">    
      <div>
       <h3>E-Learning System</h3>
          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
          <br />
          <br />
          <br />
      </div>
     </div>
        <br />
        <br />
       <div class="main-container">
        <div class="left-sec">
         <span style="z-index: 1; left: 82px; top: 165px; position: absolute"><a href="index.aspx">Home</a> </span>
         <span style="z-index: 1; left: 81px; top: 213px; position: absolute"><a href="dashboard.aspx">Dashboard</a> </span>
         <span style="z-index: 1; left: 80px; top: 260px; position: absolute"><a href="coursegrid.aspx">Course</a></span>
         <span style="z-index: 1; left: 79px; top: 312px; position: absolute"><a href="lessongrid.aspx"> Lesson</a></span>
         <span style="z-index: 1; left: 78px; top: 367px; position: absolute"><a href="registergrid.aspx">Student</a></span>
         <span style="z-index: 1; left: 78px; top: 425px; position: absolute"><a href="enquiry1grid.aspx">Enquiry</a></span>&nbsp;
         
         
        </div>
        <div class="right-sec">
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" ForeColor="Black" style="z-index: 1; left: 19px; top: 46px; position: absolute; height: 130px; " OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="COURSEID" HeaderText="Course_Id" ReadOnly="True" />
                <asp:BoundField DataField="COURSENAME" HeaderText="Couse_Name" />
                <asp:BoundField DataField="CONTENT" HeaderText="Content" />
                <asp:ImageField HeaderText="img" DataImageUrlField="COURSEIMG">
                    <ControlStyle Height="40px" Width="30px" />
                </asp:ImageField>
                <asp:BoundField DataField="FEE" HeaderText="Fee" />
                <asp:BoundField DataField="DURATION" HeaderText="Duration" />
                <asp:BoundField DataField="COURSEDATE" HeaderText="Date" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </div>
    </form>
</body>
</html>
