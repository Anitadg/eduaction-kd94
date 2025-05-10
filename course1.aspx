<%@ Page Language="C#" AutoEventWireup="true" CodeFile="course1.aspx.cs" Inherits="course1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    form>div{
     box-shadow:2px 5px 10px 2px;
    }
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
   margin-left:40px;
   }
     .heading{
        width:100%;
        height:130px;
        border:1px solid gray;
        box-shadow: 0 2px 5px 0;       
        background-image:url("icons/head1.jpeg");
        
     }
     .container{
       width:80%;
       height:1024px;
       display:grid;
       margin-left:150px;
       margin-top:50px;
       flex-direction:row;   
        border:1px solid gray;
        box-shadow: 0 2px 5px 0;   
     }
     .Course-Item1,
     .Course-Item2,
     .Course-Item3,
     .Course-Item4,
     .Course-Item5,
     .Course-Item6{
       border:1px solid gray;
        box-shadow: 0 2px 5px 0; 
     }
     .Course-Item1{
          
          height:300px;
          width:250px;
          margin-left:20px;
            z-index: 1;
            left: 273px;
            top: 400px;
            position: absolute;
        }
                
        .Course-Item2 {
            
            height:300px;
            width:250px;
            margin-left:20px;
            z-index: 1;
            left: 643px;
            top: 400px;
            position: absolute;
        }
        .Course-Item3 {
            
            height: 300px;
            width: 250px;
            z-index: 1;
            left: 1015px;
            top: 400px;
            /*top: 285px;*/
            position: absolute;
        }
        .Course-Item4 {
           
            height: 300px;
            width: 250px;
            z-index: 1;
            left: 291px;
            top: 750px;
            position: absolute;
        }
        .Course-Item5 {
           
            height: 300px;
            width: 250px;
            z-index: 1;
            margin-left:20px;
            left: 641px;
            top: 750px;
            position: absolute;
        }
        .Course-Item6 {
           
            height: 300px;
            width: 250px;
            z-index: 1;
            left: 1021px;
            top: 750px;
            position: absolute;
        }
        #LinkButton1,#LinkButton2,#LinkButton3,#LinkButton4,#LinkButton5,#LinkButton6{
        background-color:lightgray;
        box-shadow:2px 4px 4px 2px;
        text-decoration:none;
        color:black;
        width:60px;
        height:25px;
        text-align:center;
        }
         
           .footer{
            height:270px;
            z-index: 1;
            /*left: 11px;*/
            top: 1244px;
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
    <div style="background-color: #F5F5F5; height: 1493px; width: 1550px;">
      <div class="header">    
      <div>
       <h3>E-Learning System</h3>
          <asp:Label ID="Label40" runat="server" style="z-index: 1; left: 1385px; top: 44px; position: absolute; color: #666666"></asp:Label>      
      </div>
     </div>

     
        <div class="container">
             <div class="heading">  
        <asp:Label ID="Label1" runat="server" Text="COURSE" style="z-index: 1;text-align:center;font-size:35px; left: 561px; top: 307px; position: absolute; width: 387px; height: 49px; font-weight: 700;" ForeColor="darkslategray"  ></asp:Label>
         <asp:HyperLink ID="HyperLink2" href="index.aspx" runat="server" ImageHeight="30px" ImageUrl="~/icons/back (1).png" ImageWidth="30px" style="z-index: 1; left: 25px; top: 176px; position: absolute; height: 37px">HyperLink</asp:HyperLink>
          <asp:HyperLink ID="HyperLink1" href="index.aspx" runat="server" style="z-index: 1; left: 1446px; top: 179px; position: absolute; height: 27px" ImageHeight="30px" ImageUrl="~/icons/next.png" ImageWidth="30px"></asp:HyperLink>
        
      </div>

            <div class="Course-Item1">

                <asp:Image ID="Image1" runat="server" Height="137px" Width="249px" style="margin-left: 0px" />
                <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 42px;text-align:center; top: 143px; position: absolute; height: 28px; width: 154px; font-weight: 700;"></asp:Label>

                <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 9px; top: 224px; position: absolute; height: 40px; width: 231px; right: 10px; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 10px; top: 195px; position: absolute; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 135px; top: 187px; position: absolute; width: 99px; height: 29px; font-weight: 700;"></asp:Label>

               

                <asp:LinkButton ID="LinkButton1" runat="server" style="z-index: 1; left: 181px; top: 265px; position: absolute" OnClick="LinkButton1_Click">Lesson</asp:LinkButton>

               

            </div>
            <div class="Course-Item2">

                <asp:Image ID="Image2" runat="server" Height="137px" Width="249px" />
                 <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 42px;text-align:center; top: 143px; position: absolute; height: 28px; width: 154px; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 10px; top: 211px; position: absolute; height: 53px; width: 224px; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 7px; top: 185px; position: absolute; width: 88px; font-weight: 700; right: 155px;"></asp:Label>
                <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 138px; top: 186px; position: absolute; width: 93px; height: 29px; font-weight: 700;"></asp:Label>
                <asp:LinkButton ID="LinkButton2" runat="server" style="z-index: 1; left: 173px; top: 264px; position: absolute" OnClick="LinkButton2_Click">Lesson</asp:LinkButton>
            </div>
            <div class="Course-Item3">

                <asp:Image ID="Image3" runat="server" Height="137px" Width="249px" />
                 <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 42px;text-align:center; top: 143px; position: absolute; height: 28px; width: 154px; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 10px; top: 219px; position: absolute; height: 45px; width: 231px; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 13px; top: 187px; position: absolute; font-weight: 700; right: 139px;"></asp:Label>
                <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 147px; top: 185px; position: absolute; width: 99px; height: 29px; font-weight: 700;"></asp:Label>
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/lesson1.aspx" style="z-index: 1; left: 178px; top: 265px; position: absolute" OnClick="LinkButton3_Click">Lesson</asp:LinkButton>
            </div>                   
        
           <div class="Course-Item4">             

               <asp:Image ID="Image4" runat="server" Height="137px" Width="249px" />
                <asp:Label ID="Label14" runat="server" style="z-index: 1; left: 42px;text-align:center; top: 143px; position: absolute; height: 28px; width: 154px; font-weight: 700;"></asp:Label>
                
                <asp:Label ID="Label15" runat="server" style="z-index: 1; left: 10px; top: 199px; position: absolute; height: 51px; width: 227px; font-weight: 700; margin-top: 6px;"></asp:Label>
                <asp:Label ID="Label16" runat="server" style="z-index: 1; left: 10px; top: 176px; position: absolute; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label17" runat="server" style="z-index: 1; left: 145px; top: 181px; position: absolute; width: 99px; height: 29px; font-weight: 700;"></asp:Label>

                <asp:LinkButton ID="LinkButton4" runat="server" style="z-index: 1; left: 182px; top: 265px; position: absolute" OnClick="LinkButton4_Click">Lesson</asp:LinkButton>

            </div>
            <div class="Course-Item5">
                <asp:Image ID="Image5" runat="server" Height="137px" Width="249px" />
                <asp:Label ID="Label18" runat="server" style="z-index: 1; left: 42px;text-align:center; top: 143px; position: absolute; height: 28px; width: 154px; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label19" runat="server" style="z-index: 1; left: 12px; top: 202px; position: absolute; height: 48px; width: 222px; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label20" runat="server" style="z-index: 1; left: 13px; top: 179px; position: absolute; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label21" runat="server" style="z-index: 1; left: 142px; top: 182px; position: absolute; width: 99px; height: 29px; font-weight: 700;"></asp:Label>
                <asp:LinkButton ID="LinkButton5" runat="server" style="z-index: 1; left: 180px; top: 267px; position: absolute; " OnClick="LinkButton5_Click">Lesson</asp:LinkButton>
                

            </div> 
            <div class="Course-Item6">          

                <asp:Image ID="Image6" runat="server" Height="137px" Width="249px" />
                 <asp:Label ID="Label22" runat="server" style="z-index: 1; left: 42px;text-align:center; top: 143px; position: absolute; height: 28px; width: 154px; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label23" runat="server" style="z-index: 1; left: 9px; top: 201px; position: absolute; height: 59px; width: 231px; font-weight: 700;"></asp:Label>
                <asp:Label ID="Label24" runat="server" style="z-index: 1; left: 10px; top: 171px; position: absolute; font-weight: 700; height: 25px;"></asp:Label>
                <asp:Label ID="Label25" runat="server" style="z-index: 1; left: 143px; top: 172px; position: absolute; width: 99px; height: 29px; font-weight: 700;"></asp:Label>              
                <asp:LinkButton ID="LinkButton6" runat="server" style="z-index: 1; left: 183px; top: 266px; position: absolute" OnClick="LinkButton6_Click">Lesson</asp:LinkButton>
            </div>

            </div>
          <div class="footer">
          <div class="footer-text1">
              <asp:Label ID="Label26" runat="server" style="z-index: 1; left: 40px; text-align:center; top: 7px; position: absolute;font-size:22px; height: 25px; width: 158px; font-weight: 700;" Text="Quick  Links"></asp:Label>
              <asp:Label ID="Label27" runat="server" style="z-index: 1; left: 87px; top: 97px; position: absolute; width: 55px; height: 22px" Text="Services"></asp:Label>
            </div>
          <div class="footer-text2">
              <asp:Label ID="Label28" runat="server" style="z-index: 1;text-align:center; left: 57px; font-size:22px; top: 8px; position: absolute; width: 119px; font-weight: 700; height: 22px;" Text="Service"></asp:Label>
              <asp:Label ID="Label29" runat="server" style="z-index: 1; left: 93px; top: 46px; position: absolute; width: 50px" Text="FAQs"></asp:Label>
              <asp:Label ID="Label30" runat="server" style="z-index: 1; left: 101px; top: 69px; position: absolute" Text="Blog"></asp:Label>
              <asp:Label ID="Label31" runat="server" style="z-index: 1; left: 95px; top: 96px; position: absolute" Text="Gallery"></asp:Label>
              <asp:Label ID="Label32" runat="server" style="z-index: 1; left: 85px; top: 119px; position: absolute" Text="Contact Us"></asp:Label>
            </div>
          <div class="footer-text3">
              <asp:Label ID="Label33" runat="server" style="z-index: 1; left: 133px; top: 11px;font-size:22px; position: absolute; font-weight: 700; width: 91px" Text="Education"></asp:Label>
              <asp:Label ID="Label34" runat="server" style="z-index: 1; left: 65px; top: 53px; position: absolute; width: 223px; height: 81px" Text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi repudiandae est maxime illum inventore!"></asp:Label>
            </div>
            
          <div class="footer-text4">
              <asp:Label ID="Label35" runat="server" style="z-index: 1; left: 85px; top: 5px; position: absolute;font-size:22px; width: 151px; font-weight: 700" Text="Social  Media"></asp:Label>
              <asp:Image ID="Image7" runat="server" ImageUrl="~/icons/linkedin.png" style="z-index: 1; left: 51px; top: 48px; position: absolute; height: 29px; width: 31px" />
              <asp:Image ID="Image8" runat="server" ImageUrl="~/icons/insta.png" style="z-index: 1; left: 52px; top: 97px; position: absolute; height: 28px; width: 31px" />
              <asp:Label ID="Label36" runat="server" style="z-index: 1; left: 107px; top: 56px; position: absolute; width: 80px" Text="LinkeDIN"></asp:Label>
              <asp:Label ID="Label37" runat="server" style="z-index: 1; left: 114px; top: 95px; position: absolute; width: 147px" Text="InstaGram"></asp:Label>
            </div>
            <asp:Label ID="Label38" runat="server" style="z-index: 1;text-align:center; left: 858px; top: 90px; position: absolute; width: 63px" Text="Home"></asp:Label>
            <asp:Label ID="Label39" runat="server" style="z-index: 1; left: 860px; top: 115px; position: absolute; width: 63px" Text="About us"></asp:Label>
            <asp:Image ID="Image9" runat="server" ImageUrl="~/icons/communication (1).png" style="z-index: 1; left: 97px; top: 46px; position: absolute; height: 34px; width: 42px" />
        </div>
        </div>   
        

    </form>
</body>
</html>
