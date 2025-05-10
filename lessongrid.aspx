<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lessongrid.aspx.cs" Inherits="lessongrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lesson-Grid</title>
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
    color:wheat;
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
    width:20%;
    height:600px;
    background-color:darkslategrey;
    display:flex;
    flex-direction:column;
    color:whitesmoke;
    top:120px;

    }
    .main-container .right-sec{
       width:75%;
       height:600px;
       margin-left:30px;
       background-color:whitesmoke;
       z-index: 1;
       left: 321px;
       position: absolute;
       top: 115px;
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
          <span style="z-index: 1; left: 81px; top: 213px; position: absolute"><a href="dashboard.aspx">Dashboard</a></span>
         <span style="z-index: 1; left: 80px; top: 260px; position: absolute"><a href="coursegrid.aspx">Course</a></span>
         <span style="z-index: 1; left: 79px; top: 312px; position: absolute"><a href="lessongrid.aspx"> Lesson</a></span>
         <span style="z-index: 1; left: 78px; top: 367px; position: absolute"><a href="registergrid.aspx">Student</a></span>
         <span style="z-index: 1; left: 78px; top: 425px; position: absolute"><a href="enquiry1grid.aspx">Enquiry</a></span>&nbsp;
         
         <span></span>
        </div>
        <div class="right-sec">
        

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="z-index: 1; left: 224px; top: 30px;  height: 20px; width: 470px; position: absolute;" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="CHAPTERNO" HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="COURSENAME" HeaderText="Course Name" />
                    <asp:BoundField DataField="CHAPTER" HeaderText="Chapter" />
                    <asp:BoundField DataField="TITLE" HeaderText="Title" />
                    <asp:BoundField DataField="FILETYPE" HeaderText="FType" />
                    <asp:BoundField DataField="LFILE" HeaderText="PDF" />
                    <asp:BoundField DataField="URL" HeaderText="URL" >
                    <ItemStyle Width="30px" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

            <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 26px; top: 5px; position: absolute; width: 154px; height: 37px; color: #FFFFCC; background-color: #009900" Text="ADD" PostBackUrl="~/lesson.aspx" OnClick="Button1_Click" />

           </div>
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
