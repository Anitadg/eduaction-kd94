<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userdashboard.aspx.cs" Inherits="userdashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>USER DASHBOARD</title>
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
   }
    nav>span{
    margin-left:30px;
    margin-top:20px;
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
    
    .left-sec>span,
    .left-sec>span>a{
      font-style:italic;
      font-size:18px;
      color:wheat;
      cursor:pointer;

    }
    .main-container .right-sec{
       width:99%;
       height:600px;
       
       background-color:whitesmoke;
       z-index: 1;
       left: 5px;
       position: absolute;
       top: 122px;
       border:1px solid darkseagreen;
       box-shadow:2px 5px 10px 2px;
      }
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div class="header">    
      <div>
       <h3>E-Learning System</h3>
          <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 1385px; top: 44px; position: absolute; color: #CCCCFF"></asp:Label>
      </div>
     </div>
        <br />
        <br />
       <div class="main-container">

        <div class="right-sec">
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="z-index: 1; left: -2px; top: 132px; position: absolute; height: 175px; width: 856px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="FIRSTNAME" HeaderText="FNAME" />
                    <asp:BoundField DataField="LASTNAME" HeaderText="LNAME" />
                    <asp:BoundField DataField="PHONENUMBER" HeaderText="PHONE" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" />
                    <asp:BoundField DataField="GENDER" HeaderText="GENDER" />
                    <asp:ImageField DataImageUrlField="PHOTO" HeaderText="PHOTO">
                        <ControlStyle Height="30px" Width="30px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" />
                    <asp:BoundField DataField="STATE" HeaderText="STATE" />
                    <asp:BoundField DataField="CITY" HeaderText="CITY" />
                    <asp:BoundField DataField="PINCODE" HeaderText="PINCODE" />
                    <asp:BoundField DataField="COURSENAME" HeaderText="CNAME" ReadOnly="True" />
                    <asp:BoundField DataField="ENROLLMENTNO" HeaderText="ENROLLMENT" ReadOnly="True" />
                    <asp:BoundField DataField="FEE" HeaderText="FEE" ReadOnly="True" />
                    <asp:BoundField DataField="DURATION" HeaderText="DURATION" ReadOnly="True" />
                    <asp:BoundField DataField="DOADMISSION" HeaderText="DOADMISSION" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:HyperLink ID="HyperLink1" href="index.aspx" runat="server" ImageHeight="50px" ImageUrl="~/icons/home-icon-silhouette.png" ImageWidth="60px" style="z-index: 1; left: 182px; top: 11px; position: absolute">HyperLink</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" href="userdashboard.aspx" runat="server" ImageUrl="~/icons/app.png" ImageHeight="40px" ImageWidth="60px" style="z-index: 1; left: 356px; top: 16px; position: absolute">HyperLink</asp:HyperLink>
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
