<%@ Page Language="C#" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="enquiry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Enquiry</title>
    <style>
          .main-container {
            display: flex;
            flex-direction: column;
            width: 1300;
            left: 5px;
            right:5px;
            height:1300px;
            background-color:floralwhite;
        }

        .head {
            color: white;
            display: flex;
            flex-direction: row;
            justify-content:space-around;
            background-color: #6B6C7A;
            height: 30px;
            padding: 20px;
            top:6px;
            width:1460px;
            left: 5px;
            margin-bottom: 5px;
        }
         nav>span,
        nav>span a{
            margin-left: 20px;
            font-size:20px;
            color:wheat;
            text-decoration:none;
        }
        #LinkButton2,
        #LinkButton1{
            color:wheat;
            text-decoration:none;
            
        }
        nav>span>a:hover,
        #LinkButton3:hover,
        #LinkButton1:hover{
            background-color:greenyellow;
            border-radius:5px;
            color:black;
        }
        header>h3{
        display:flex;    
        font-size:25px;
        font-family:'Book Antiqua';
        color:lightyellow;
        z-index: 1;
        left: 11px;
        top: 4px;
        position: absolute;
        height: 35px;
        width: 219px;
        }
        #LinkButton1,#LinkButton2,
        #LinkButton3,#LinkButton4
        {
            color:wheat;
            text-decoration:none;
        }
        nav>span,
        nav>span a{
            margin-left: 20px;
            font-size:20px;
            color:wheat;
            text-decoration:none;
        }

        .container{
            height:400px;
            position:relative;
            
        }
        #LinkButton4,#LinkButton3{
             width: 100px;
            height: 40px;           
            top: 10px;
            position: absolute;
            background-color:#009999;
            border:0px solid white; 
            border-radius:20px;
            color:ghostwhite;
            font-family:'Book Antiqua';
            font-size:18px;
            cursor:pointer;
             left: 449px;
        }
        #LinkButton3:hover,
        #LinkButton4:hover{
              background-color:indianred;
        }
        #LinkButton3{
            text-align:center;
            margin-left:20px;
        }
        .text{
          text-align:center;
          padding:50px 0px;
        }
        .text h2{
          font-size:40px;
          margin-bottom:10px;
          width:238px;
          text-align:center;
            z-index: 1;
            left: 628px;
            top: 71px;
            position: absolute;
            height: 45px;
        }
        .text p{
         font-size:20px;
         height:40px;
            z-index: 1;
            left: 649px;
            top: 135px;
            position: absolute;
            width: 200px;
            color: #333300;
            text-align:center;
        }
        .container::before{
        content:"";
        position:absolute;
         
        top:0;
        left:0;
        height:100%;
        width:100%;
          background-image:url('media/laptop.jpeg');
         background-position:center;
         background-size:cover;
         opacity:0.4;
        }
        .section{
         width:100%;
         height:500px;
            z-index: 1;
            left: 0px;
            top: 493px;
            position: absolute;
        }
        .left{
         width:40%;
          height:450px;
            z-index: 1;
            left: 15px;
            top: 14px;
            position: absolute;
            background-color: lightgray;
        }
        .right{
        width:55%;
         height:450px;
            z-index: 1;
            left: 666px;
            top: 14px;
            position: absolute;
            background-color:lightgrey;
        }
        .footer{
            
            height:270px;
            z-index: 1;
            left: 9px;
            top: 1012px;
            position: absolute;
            width: 1550px;
            color:wheat;
            background-color:#333333;
        }
        .footer-text1
        {
        color:wheat;
            height:165px;   
            z-index: 1;
            left: 771px;
            top: 39px;
            position: absolute;
            width: 256px;
        }
        .footer-text2{            
            height:165px;
            z-index: 1;
            left: 402px;
            top: 38px;
            position: absolute;
            width: 271px;
        }
        .footer-text3
        {
            height:165px;
            z-index: 1;
            left: 20px;
            top: 39px;
            position: absolute;
            width: 315px;
        }
        .footer-text4{
            height:165px;
            z-index: 1;
            left: 1147px;
            top: 37px;
            position: absolute;
            width: 315px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div class="main-container">
         <div class="head">
            <header>
                <h3> E-Learning</h3>
            <nav style="height: 30px; width: 430px; z-index: 1; left: 673px; top: 33px; position: absolute; right: 715px;">
               
                <span><a href="index.aspx">Home</a></span>
                <span><a href="enquiry.aspx">Contant</a></span>
                <span><a href="#">About us</a> </span>                
                <span><a href="course1.aspx">Course</a> 
                </span>               
           </nav>           

                <asp:LinkButton ID="LinkButton1" runat="server"  style="z-index: 1; left: 1113px; top: 35px; position: absolute;">DASBOARD</asp:LinkButton>

                <asp:LinkButton ID="LinkButton4" runat="server" style="z-index: 1; left: 1390px; font-size:18px; top: 34px; position: absolute; color: #FFFFFF; margin-top: 0px;">Logout</asp:LinkButton>

                <asp:LinkButton ID="LinkButton3" href="signup.aspx" runat="server" style="z-index: 1; left: 1247px; font-size:19px;text-align:center; top: 31px; position: absolute; color: #FFFFCC">Signup</asp:LinkButton>

          </header>
        </div>
        <div class="container">
         <div class="text">
          
          <h2>Contact Us</h2>
          <p>GET  IN  TOUCH</p>
         </div>
         </div>
         <div class="section">
          <div class="left">
            
              <asp:Label ID="Label10" runat="server" style="z-index: 1;text-align:center;font-size:30px; left: 129px; top: 7px; font-family:'Book Antiqua'; position: absolute; width: 318px; height: 32px; font-weight: 700;" Text="Contact Information"></asp:Label>
            
              <asp:Image ID="Image1" runat="server" ImageUrl="~/icons/gmail.png" style="z-index: 1; left: 59px; top: 86px; position: absolute; height: 37px; width: 37px" />
              <asp:Label ID="Label11" runat="server" style="z-index: 1;font-size:16px; left: 147px; top: 87px; position: absolute; width: 359px; color: #333300; font-weight: 700; bottom: 344px;" Text="Email   Address"></asp:Label>
            
              <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 154px; top: 109px; position: absolute; width: 166px; color: #669999" Text="education@gmail.com"></asp:Label>
              <asp:Image ID="Image2" runat="server" ImageUrl="~/icons/phone.png" style="z-index: 1; left: 64px; top: 175px; position: absolute; width: 30px" />
              <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 149px; top: 165px; position: absolute; width: 148px; color: #333300; font-weight: 700" Text="Phone Number"></asp:Label>
              <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 157px; top: 186px; position: absolute; width: 286px; color: #669999" Text="+91 9182736540,  +91  654654455"></asp:Label>
              <asp:Image ID="Image3" runat="server" ImageUrl="~/icons/placeholder.png" style="z-index: 1; left: 64px; top: 262px; position: absolute; width: 31px" />
                          <asp:Label ID="Label15" runat="server" style="z-index: 1;font-size:16px; left: 144px; top: 253px; position: absolute; width: 359px; color: #333300; font-weight: 700; bottom: 174px;" Text="Location"></asp:Label>
            
              <asp:Label ID="Label16" runat="server" style="z-index: 1; left: 153px; top: 272px; position: absolute; width: 166px; color: #669999" Text="Adityapur"></asp:Label>
          </div>
          <div class="right">
           <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 346px; top: 4px; position: absolute; font-size:30px; text-align:center; height: 33px; width: 192px; font-family:'Bell MT'; font-weight: 700; " Text="Enquiry Form"></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 53px; top: 31px; position: absolute; width: 70px"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enquiry number" style="z-index: 1; left: 55px; top: 92px; font-size:17px; position: absolute; height: 16px;"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 199px; top: 86px; position: absolute; width: 162px; height: 27px; "></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Name*" style="z-index: 1; left: 62px; top: 144px; font-size:17px; position: absolute; width: 79px; bottom: 275px"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 198px; top: 150px; position: absolute; height: 27px; width: 253px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email*" style="z-index: 1; left: 65px; font-size:17px; top: 214px; position: absolute; right: 658px;"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Contact*" style="z-index: 1; left: 437px; font-size:16px; top: 218px; position: absolute"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 201px; top: 215px; position: absolute; width: 208px; height: 27px; right: 385px;" ></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 523px; top: 212px; position: absolute; height: 27px; width: 241px"></asp:TextBox>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 407px; top: 89px; position: absolute; width: 100px; height: 24px; right: 287px" Text="Date of Enquiry"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 523px; top: 83px; position: absolute; width: 223px; height: 28px" TextMode="Date"></asp:TextBox>
        <br />
        <asp:HyperLink ID="HyperLink1" href="index.aspx" runat="server" ImageHeight="40px" ImageUrl="~/icons/arrow.png" ImageWidth="40px" style="z-index: 1; top: 312px; position: absolute; height: 44px; left: 190px">HyperLink</asp:HyperLink>
        
        <br />

        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 282px; top: 305px; position: absolute;text-align:center; font-size:30px; width: 417px; height: 44px; font-family: be; font-weight: 700; right: 136px; font-family: 'Bell MT';background-color: #006600; color: #FFFFFF;" Text="Submit" OnClick="Button1_Click" />
          </div>
        </div>
        <div class="footer">
          <div class="footer-text1">
              <asp:Label ID="Label17" runat="server" style="z-index: 1; left: 40px; text-align:center; top: 7px; position: absolute;font-size:22px; height: 25px; width: 158px; font-weight: 700;" Text="Quick  Links"></asp:Label>
              <asp:Label ID="Label20" runat="server" style="z-index: 1; left: 87px; top: 97px; position: absolute; width: 55px; height: 22px" Text="Services"></asp:Label>
            </div>
          <div class="footer-text2">
              <asp:Label ID="Label21" runat="server" style="z-index: 1;text-align:center; left: 57px; font-size:22px; top: 8px; position: absolute; width: 119px; font-weight: 700; height: 22px;" Text="Service"></asp:Label>
              <asp:Label ID="Label22" runat="server" style="z-index: 1; left: 93px; top: 46px; position: absolute; width: 50px" Text="FAQs"></asp:Label>
              <asp:Label ID="Label23" runat="server" style="z-index: 1; left: 101px; top: 69px; position: absolute" Text="Blog"></asp:Label>
              <asp:Label ID="Label24" runat="server" style="z-index: 1; left: 95px; top: 96px; position: absolute" Text="Gallery"></asp:Label>
              <asp:Label ID="Label25" runat="server" style="z-index: 1; left: 85px; top: 119px; position: absolute" Text="Contact Us"></asp:Label>
            </div>
          <div class="footer-text3">
              <asp:Label ID="Label26" runat="server" style="z-index: 1; left: 133px; top: 11px;font-size:22px; position: absolute; font-weight: 700; width: 91px" Text="Education"></asp:Label>
              <asp:Label ID="Label27" runat="server" style="z-index: 1; left: 65px; top: 53px; position: absolute; width: 223px; height: 81px" Text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi repudiandae est maxime illum inventore!"></asp:Label>
            </div>
            
          <div class="footer-text4">
              <asp:Label ID="Label28" runat="server" style="z-index: 1; left: 85px; top: 5px; position: absolute;font-size:22px; width: 151px; font-weight: 700" Text="Social  Media"></asp:Label>
              <asp:Image ID="Image5" runat="server" ImageUrl="~/icons/linkedin.png" style="z-index: 1; left: 51px; top: 48px; position: absolute; height: 29px; width: 31px" />
              <asp:Image ID="Image6" runat="server" ImageUrl="~/icons/insta.png" style="z-index: 1; left: 52px; top: 97px; position: absolute; height: 28px; width: 31px" />
              <asp:Label ID="Label29" runat="server" style="z-index: 1; left: 107px; top: 56px; position: absolute; width: 80px" Text="LinkeDIN"></asp:Label>
              <asp:Label ID="Label30" runat="server" style="z-index: 1; left: 114px; top: 95px; position: absolute; width: 147px" Text="InstaGram"></asp:Label>
            </div>
            <asp:Label ID="Label18" runat="server" style="z-index: 1;text-align:center; left: 858px; top: 90px; position: absolute; width: 63px" Text="Home"></asp:Label>
            <asp:Label ID="Label19" runat="server" style="z-index: 1; left: 860px; top: 115px; position: absolute; width: 63px" Text="About us"></asp:Label>
            <asp:Image ID="Image4" runat="server" ImageUrl="~/icons/communication (1).png" style="z-index: 1; left: 97px; top: 46px; position: absolute; height: 34px; width: 42px" />
        </div>
    </div>
    </div>
    </form>
</body>
</html>
