<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registergrid.aspx.cs" Inherits="registergrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    width:12%;
    height:600px;
    background-color:darkslategray;
    display:flex;
    flex-direction:column;
    color:whitesmoke;
    top:120px;

    }
    .main-container .right-sec{
       width:87%;
       height:600px;
       margin-left:10px;
       background-color:whitesmoke;
       z-index: 1;
       left: 196px;
       position: absolute;
       top: 123px;
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
         
         
        </div>
        <div class="right-sec">
          
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" style="z-index: 1; left: 8px; top: 64px; position: absolute; height: 40px; width: 1250px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="ENROLLMENTNO" HeaderText="EnrollNo" >
                <ItemStyle Width="10px" />
                </asp:BoundField>
                <asp:BoundField DataField="FIRSTNAME" HeaderText="FirstName" />
                <asp:BoundField DataField="LASTNAME" HeaderText="LastName" />
                <asp:BoundField DataField="PHONENUMBER" HeaderText="Phone" />
                <asp:BoundField DataField="EMAIL" HeaderText="Email" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" />
                <asp:BoundField DataField="GENDER" HeaderText="Gender" />
                <asp:BoundField DataField="ADDRESS" HeaderText="Address" />
                <asp:BoundField DataField="STATE" HeaderText="State" />
                <asp:BoundField DataField="CITY" HeaderText="City" />
                <asp:BoundField DataField="PINCODE" HeaderText="Pincode" />
                <asp:BoundField DataField="COURSENAME" HeaderText="CName" />
                <asp:BoundField DataField="DOADMISSION" HeaderText="DOAdm" />
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
    </div>    
    </div>
    </form>
</body>
</html>
