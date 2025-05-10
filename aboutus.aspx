<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <style>
        .main-container {
            display: flex;
            flex-direction: column;
            width: 1500px;
        }

        .head {
            color: white;
            display: flex;
            flex-direction: row;
            justify-content:space-around;
            background-color: #6B6C7A;
            height: 60px;
            padding: 20px;
            top:0;
            /*width:100%;*/
        }
        header>h3{
        display:flex;    
        font-size:25px;
        font-family:'Book Antiqua';
        color:lightyellow;
        z-index: 1;
        left: 23px;
        top: 26px;
        position: absolute;
        height: 35px;
        width: 178px;
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
            font-size:20px;
        }
        nav>span>a:hover,
        #LinkButton2:hover,
        #LinkButton1:hover{
            background-color:greenyellow;
            border-radius:5px;
            color:black;
        }
         nav>span>a{
             text-decoration:none;
         }
         .btn,.btn1{
            width: 100px;
            height: 40px;           
            top: 27px;
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
        .btn:hover,
        .btn1:hover{
         background-color:indianred;
        }
        .btn{
            left: 1356px;
            right: 362px;                   
        }
       

        .btn>button {
            margin-top: 20px;
            margin-right: 20px;
        }  
        .about{
            width:1470px;
        }
        .footer {
            display: flex;
            flex-direction: row;
            background-color: black;
            justify-content: space-around;
            padding: 30px;
            margin-top: 100px;
            color:lightgoldenrodyellow;
            z-index: 1;
            left: 2px;
            top: 660px;
            position: absolute;
            height: 150px;
            width: 1500px;
        }
        .footer_text {
            display: flex;
            flex-direction: column;
        }
        .footer_text>h2 {
            margin-bottom: 10px;
        }
        .footer_social {
            display: flex;
            flex-direction: column;
        }
        .footer_social h2 {
            margin-bottom: 20px;
        }
        .footer_social span img{
         width:30px;height:30px;
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
                <asp:Button ID="Button1" runat="server"  CssClass="btn" style="z-index: 1; " Text="Log in" PostBackUrl="~/login.aspx"   />
                
                <asp:Button ID="Button2" runat="server" CssClass="btn" style="z-index: 1;" Text="Log out" />
                <asp:Button ID="Button3" runat="server" CssClass="btn1" style="z-index: 1; left: 1236px;"  Text="Signup" PostBackUrl="~/signup.aspx" />
                <asp:Label ID="Label2" runat="server" style="left:425px; position: absolute;width:200px;top:35px; " ></asp:Label>
            <nav style="height: 30px; width: 430px; z-index: 1; left: 583px; top: 36px; position: absolute; right: 805px;">
               
                <span><a href="index.aspx">Home</a></span>
                <span><a href="enquiry.aspx">Contant</a></span>
                <span><a href="aboutus.aspx">About us</a> </span>
                
                <span><a href="course1.aspx">Course</a></span>               
                <asp:LinkButton ID="LinkButton2" runat="server" style="text-decoration:none; z-index: 1; left: 437px; top: 1px; position: absolute;" >Registration</asp:LinkButton>
           </nav>                        
                <asp:LinkButton ID="LinkButton1" runat="server"  style="z-index: 1; top: 35px; left: 1130px; position: absolute; height: 20px; width: 99px;"  >Dashboard</asp:LinkButton>
          </header>
        </div>
    </div>
        <div class="about">
        <strong>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/media/screenlaptop1.jpg" style="z-index: 1; left: 35px; top: 154px; position: absolute; height: 461px; width: 744px" />
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 839px; font-size:45px; top: 163px; position: absolute; width: 295px" Text="E-Learning"></asp:Label>
        </strong>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 813px; top: 248px; position: absolute; width: 676px; font-family:'Book Antiqua'; height: 183px" Text="Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit animi impedit exercitationem quas neque sit, consequuntur quod itaque doloremque ullam nostrum ea quos maxime! Dolore veritatis laborum facilis perspiciatis reiciendis!.Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit animi impedit exercitationem quas neque sit, consequuntur quod itaque doloremque ullam nostrum ea quos maxime! Dolore veritatis laborum facilis perspiciatis reiciendis!"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 820px; top: 431px; position: absolute; width: 622px; height: 77px" Text=" Reprehenderit animi impedit exercitationem quas neque sit, consequuntur quod itaque doloremque ullam nostrum ea quos maxime! Dolore veritatis laborum facilis perspiciatis reiciendis!"></asp:Label>

       </div>

        <div class="footer">
            <div class="footer_text">
                <h2>Support</h2>
                <span>Help Center</span>
                <span>Safety information</span>
                <span>Cancellation options</span>
            </div>
            <div class="footer_text">
                <h2>Company</h2>
                <span>About us</span>
                <span>Privacy Policy</span>
                <span>Community Blog</span>
                <span>Terms of service</span>
            </div>
            <div class="footer_text">
                <h2>content</h2>
                <span>FAQ</span>
                <span>Get in touch</span>
                <span>Partnerships</span>
            </div>
            <div class="footer_social">
                <span><h2>Social</h2></span>
                <span>
                  <img src="icons/insta.png" />
                  <img src="icons/pinterest.png" />
                  <img src="icons/facebook.png" />
                  <img src="icons/telegram.png" />
                  <img src="icons/youtube.png" />
                </span>              
            </div>
        </div>
       
     </div>
    </form>
</body>
</html>
