<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <div class="main-container">
         
         <div class="head">
            <header>
                <h3> E-Learning</h3>
                <asp:Button ID="Button1" runat="server"  CssClass="btn" style="z-index: 1; " Text="Log in" PostBackUrl="~/login.aspx"   />
                
                <asp:Button ID="Button2" runat="server" CssClass="btn" style="z-index: 1;" Text="Log out" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" CssClass="btn1" style="z-index: 1; left: 1306px;"  Text="Signup" PostBackUrl="~/signup.aspx" />
                <asp:Label ID="Label2" runat="server" style="left:427px; position: absolute;width:200px;top:-2px; " >Label</asp:Label>
            <nav style="height: 30px; width: 331px; z-index: 1; left: 608px; top: 17px; position: absolute; right: 879px;">
               
                <span><a href="index.html">Home</a></span>
                <span><a href="enquiry.aspx">Contant</a></span>
                <span><a href="aboutus.aspx">About us</a> </span>
                
                
                <asp:LinkButton ID="LinkButton2" runat="server" style="text-decoration:none; z-index: 1; left: 437px; top: 1px; position: absolute;" OnClick="LinkButton2_Click1">Registration</asp:LinkButton>
           </nav>                        
                <asp:LinkButton ID="LinkButton1" runat="server"  style="z-index: 1; top: 18px; left: 1199px; position: absolute; " OnClick="LinkButton1_Click2" >Dashboard</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" style="z-index: 1;font-size:20px; left: 955px; top: 18px; position: absolute; color: #FFCC99" OnClick="LinkButton3_Click">Course</asp:LinkButton>
          </header>
        </div>
        <h5><marquee>Lorem ipsum dolor sit, amet consectetur adipisicing elit. 🙏 Humare website me aapka swagath hai 🙏 . Nemo sunt eum tempore rem soluta!</marquee ></h5>
        <div class="container">   
           <div class="container-text">          
                <span>Best Online Course</span>
                <h1>Get Education online From Your Home</h1>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nemo sunt eum tempore rem soluta!</p>
                          
                <button><a> Dashboard</a></button>
                <button>Next </button>
               
            </div>
           
        </div>
        <div class="skill">
            <div class="gallery">
                <span><img src="icons/graduate.png" alt="" /></span>
                <span class="h">Skilled Instructors</span>
                <span>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Sunt sequi adipisci dolores molestias
                    corrupti!</span>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="gallery">
                    <span><img src="icons/web.png" alt="" /></span>
                    <span class="h">Skilled Instructors</span>
                    <span>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Sunt sequi adipisci dolores molestias
                        corrupti!</span>
            </div>
            <div class="gallery">
                    <span><img src="icons/home.png" /></span>
                    <span class="h">Skilled Instructors</span>
                    <span>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Sunt sequi adipisci dolores molestias
                        corrupti!</span>
            </div>
            <div class="gallery">
                    <span><img src="icons/open-book.png" alt="" /></span>
                    <span class="h">Skilled Instructors</span>
                    <span>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Sunt sequi adipisci dolores molestias
                        corrupti!</span>
            </div>
        </div>
        <div class="section">
            <div class="left-sec">
                <img src="media/twogirl.jpg" />
            </div>
            <div class="right-sec">
                <h1>Welcome to E-Learning</h1>
                <span>Lorem ipsum dolor sit, amet consectetur adipisicing elit.Dolorum, iste voluptas! Molestiae
                    similique quae non?</span>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing eit. Modi repudiandae est maxime illum inventore
                    dolorem placeat magni delectus consequuntur eaque quaerat, reprehenderit, ipsum aliquam doloribus
                    voluptatibus possimus architecto, sit sint!</p>
                <div>
                    <div class="right-sec-txt1">
                        <span><img src="icons/next.png" /> Skilled Instructors</span>
                        <span><img src="icons/next.png" /> International Certificate</span>
                        <span><img src="icons/next.png" /> Online
                            class</span>
                    </div>
                    <div class="right-sec-txt2">
                        <span><img src="icons/next.png" /> 24 Hours Classes</span>
                        <span><img src="icons/next.png" /> Provides Videos</span>
                        <span><img src="icons/next.png" /> Provide Study material</span>
                    </div>
                </div>
                <button>Read More....</button>
            </div>
        </div>
        <div class="course-categories">
            <h1>Course Categories</h1>
            <div class="grid">
                <div class="grid-im">
                    <img src="media/booklab.jpg" alt="" />
                </div>
                <div class="grid-im">
                    <img src="media/studygirl.jpeg" alt="" />
                </div>
                <div class="grid-im">
                    <img src="media/studylaptop.jpeg" alt="" />
                </div>
                <div class="grid-im">
                    <img src="media/study.jpeg" alt="" />
                </div>
            </div>
        </div>
        <div class="course">
            <h1>Popular-course</h1>
            <div>
                <div class="popular-course">
                    <img src="media/python.jpeg" alt="" />
                       <span>
                        <h4>₹4000</h4>
                       </span>
                    <span>
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star-half-empty.png" />

                    </span>
                    <span>Python</span>
                </div>
                <div class="popular-course">
                    <img src="media/css.jpg" alt="" />
                    <span>
                        <h4>₹2200</h4>
                    </span>
                    <span>
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star.png" />
                    
                    </span>
                    <span>CSS</span>
                </div>
                <div class="popular-course"> 
                    <img src="media/html.jpeg" alt="" />
                    <span>
                        <h4>₹1800</h4>
                    </span>
                    <span>
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                     <img src="icons/star.png" />
                    </span>
                    <span>HTML</span>
                </div>
                <div class="popular-course">
                    <img src="media/java1.jpeg" alt="" />
                    <span>
                        <h4>₹3000</h4>
                    </span>
                    <span><img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star-half-empty.png" />
                 </span>
                    <span>JAVA</span>
                </div>
                <div class="popular-course">
                    <img src="media/c.jpeg" alt=""  />
                    <span>
                        <h4>₹2500</h4>
                    </span>
                    <span>
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                    <img src="icons/star (2).png" />
                     <img src="icons/star (2).png" />
                    </span>
                    <span>C++</span>
                </div>
           </div>
        </div>
        <div class="instructor">
            <h1>Expert Instructor</h1>
            <div>             
                <div class="instruc">
                    <img src="icons/anita.jpg" alt="" />
                    <span>
                        <h4>ANITA DIGGI</h4>
                    </span>
                    <span>
                    <img src="icons/linkedin.png" />
                    <img src="icons/twitter.png" />
                    <img src="icons/youtube.png" />
                    </span>
                    <span>SQl,Java,C++</span>
                </div>
                <div class="instruc">
                    <img src="icons/anjali.jpg" alt="">
                    <span>
                        <h4>ANJALI RANI</h4>
                    </span>
                    <span>
                    <img src="icons/insta.png" />
                    <img src="icons/telegram.png" />
                    <img src="icons/twitter (2).png" />
                    </span>
                    <span>C++,Python,DAA</span>
                </div>
                 <div class="instruc">
                    <img src="icons/asha.png" alt="" />
                    <span>
                        <h4>ASHA KUMARI</h4>
                    </span>
                    <span>
                    <img src="icons/insta.png" />
                    <img src="icons/facebook.png" />
                    <img src="icons/linkedin.png" />
                    </span>
                    <span>Python,Linux,C++</span>
                </div>
            </div>
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
     </div>
    </form>

</body>
</html>