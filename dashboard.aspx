<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
        <style>
        .header{
    background-color:darkslategrey;
    height:80px;
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
            left: 2px;
            top: 10px;
            font-size:25px;
            position: absolute;
            height: 30px;
            width: 268px;
            color: #FFFFCC;
        }
    nav>span{
    margin-left:30px;
    margin-top:20px;
    }
    span>i{
    color:wheat;
    }
    .user{
    width:20px;
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
    top: 115px;
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
      .left-sec span i a{
        text-decoration:none; 
       font-size:18px;
       color:wheat;
       cursor:pointer;
       font-style:normal;
    }
    .record>.rec-1,
    .record>.rec-2,
    .record>.rec-3,
    .record>.rec-4,
    .record>.rec-5{
            height:200px;
            width:200px;
            box-shadow:2px 5px 15px 2px;
    }
    .record>.rec-1{
            border: 2px solid skyblue;
            z-index: 1;
            left: 84px;
            top: 72px;
            position: absolute;
        }
        .record>.rec-2{
            border: 2px solid skyblue;
            z-index: 1;
            left: 342px;
            top: 71px;
            position: absolute;
        }
        .record > .rec-3 {
            border: 2px solid yellow;
            z-index: 1;
            left: 611px;
            top: 72px;
            position: absolute;
        }
        .record > .rec-4 {
            border: 2px solid yellow;
            z-index: 1;
            left: 870px;
            top: 71px;
            position: absolute;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
      <div>
      <h3>E-Learning System</h3>
          
          <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 1334px; top: 39px; position: absolute; width: 148px; bottom: 599px; font-weight: 700;"></asp:Label>
          
    </div>
      </div>
        <br />
        <br />
       <div class="main-container">
        <div class="left-sec">
         <span style="z-index: 1; left: 82px; top: 177px; position: absolute"><a href="index.aspx">Home</a> </span>
         <span style="z-index: 1; left: 83px; top: 238px; position: absolute"><i class="fa fa-dashboard" aria-hidden="true"><a href="dashboard.aspx">Dashboard</a></i></span>
         <span style="z-index: 1; left: 83px; top: 298px; position: absolute"><i class="fa fa-book" aria-hidden="true"><a href="coursegrid.aspx">Course</a> </i></span>
         <span style="z-index: 1; left: 81px; top: 361px; position: absolute"><a href="lessongrid.aspx"> Lesson</a></span>
         <span style="z-index: 1; left: 78px; top: 423px; position: absolute"><i class="fa fa-group" aria-hidden="true"><a href="registergrid.aspx">Student</a> </i></span>
            <span style="z-index: 1; left: 78px; top: 491px; position: absolute"><i class="fa fa-group" aria-hidden="true"><a href="enquiry1grid.aspx">Enquiry</a> </i></span>
         &nbsp;</div>
        <div class="right-sec">
           <div class="record">
             <div class="rec-1">
                <h2 style="z-index: 1; left: 15px; top: 33px; position: absolute; height: 26px; width: 161px">No. of&nbsp; Course</h2>
                 <asp:Label ID="Label1" runat="server" style="z-index: 1; text-align:center;font-size:30px; left: 47px; top: 100px; position: absolute; width: 97px; height: 34px;"></asp:Label>
             </div>
             <div class="rec-2">
               <h2 style="z-index: 1; left: 3px; top: 35px; position: absolute; height: 26px; width: 191px">No. of&nbsp; Enrollment</h2>
               <asp:Label ID="Label2" runat="server" style="z-index: 1; text-align:center;font-size:30px; left: 47px; top: 100px; position: absolute; width: 76px"></asp:Label>
             </div>
             <div class="rec-3">
               <h2 style="z-index: 1; left: 16px; top: 33px; position: absolute; height: 26px; width: 161px">No. of&nbsp; Enquiry</h2>
               <asp:Label ID="Label3" runat="server" style="z-index: 1; text-align:center;font-size:30px; left: 47px; top: 100px; position: absolute; width: 76px"></asp:Label>
             </div>
             <div class="rec-4">
               <h2 style="z-index: 1; left: 13px; top: 40px; position: absolute; height: 26px; width: 171px">No.  Of&nbsp; Student</h2>
               <asp:Label ID="Label4" runat="server" style="z-index: 1; text-align:center;font-size:30px; left: 47px; top: 100px; position: absolute; width: 76px"></asp:Label>
             </div>
           </div>
        </div>
    
    </div>
    </form>
</body>
</html>
