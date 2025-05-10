<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
              
              color:black;
            background-color: #E1E1E1;
        }
        #Label1{
            font-family:'Times New Roman', Times, serif;
            font-size:40px;
            color:#003300;
            
        }
        #Label2{
            font-family:'Bookman Old Style';
            font-size:22px;
            color:#FF9966;
        }
        #Label3 ,#Label4
        {
            font-size:18px;
            color:#000000;
        }
        #Label5, #Label6{
            font-size:18px;
        }
        #Label7, #Label8, #Label9{
            font-size:18px;
        }
        #Label10{
            font-size:18px;
        }
         #Label11,#Label12{
             font-size:18px;
         }
         #Label13{
             font-size:18px;
         }
         #Label14{
             font-size:25px;
             color:blue;
         }
         #Label15,#Label16{
             font-size:18px;
         }
         #Label17,#Label18,#Label20{
             font-size:18px;
         }
         #Button1{
             font-family:'Times New Roman', Times, serif;
             font-size:22px;
            background-color:#00CC00;
            color:white;
         }
        
         .container{
           width:700px;
           height:850px;
           box-shadow:2px 5px 20px 2px;
           margin-left:450px;
           margin-top:5px;
            z-index: 1;
            left: 10px;
            top: 36px;
            position: absolute;
            border:1px solid black;
            background-color:#ffffff;
            /*background-color:palegoldenrod;*/
        }
         .head{
           height:1000px;
            /*background-color: #006666;*/
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div class="head">
          <div class="container">
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 164px; top: 6px; text-align:center; position: absolute; width: 354px; height: 45px; font-weight: 700;" Text="Registration Form "></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 115px; top: 66px; position: absolute;font-size:16px;text-align:center; width: 459px; height: 25px; " Text="Fill out the from carefully for registration"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 58px; top: 120px; position: absolute; height: 25px; width: 207px; font-weight: 700;" Text="First Name*"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 393px; top: 117px; position: absolute; font-weight: 700; width: 107px;" Text="Last Name *"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; top: 201px; position: absolute; left: 62px; font-weight: 700; color: #000000; width: 131px;" Text="Phone Number*"></asp:Label>
        <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 65px; top: 279px; position: absolute; width: 120px; font-weight: 700; color: #000000;" Text="Date of Birth*"></asp:Label>
        <asp:Label ID="Label8" runat="server" style="z-index: 1; left: 252px; top: 280px; position: absolute; width: 76px; color: #000000; font-weight: 700;" Text="Gender*"></asp:Label>
        <asp:Label ID="Label10" runat="server" style="z-index: 1; left: 71px; top: 359px; position: absolute; width: 167px; font-weight: 700; color: #000000;" Text="Permanent Address*"></asp:Label>
        <asp:Label ID="Label11" runat="server" style="z-index: 1; left: 78px; top: 440px; position: absolute; width: 76px; bottom: 353px; font-weight: 700; color: #000000;" Text="State*"></asp:Label>
        <asp:Label ID="Label9" runat="server" style="z-index: 1; left: 444px; top: 276px; position: absolute; width: 169px; color: #000000;" Text="Attach Photo*"></asp:Label>
        <asp:TextBox ID="TextBox1" required runat="server" style="z-index: 1; left: 58px; top: 145px; position: absolute; width: 250px; height: 29px; right: 384px"></asp:TextBox>
        <asp:Label ID="Label14"  runat="server" style="z-index: 1; left: 82px; top: 524px; position: absolute; bottom: 263px; width: 196px;height:33px; font-weight: 700;" Text="Course Details"></asp:Label>
        <asp:Label ID="Label15" runat="server" Text="Course Name *" style="z-index: 1; left: 90px; width:132px; top: 570px; position: absolute; right: 478px; color: #000000; font-weight: 700; height: 34px;"></asp:Label>
        <asp:Label ID="Label16" runat="server" Text="Enrollment No *" style="z-index: 1; left: 388px; top: 563px; position: absolute; width: 196px; right: 116px; margin-top: 0px; font-weight: 700; color: #000000;"></asp:Label>
        <asp:Label ID="Label17" runat="server" Text="Fee :" style="z-index: 1; left: 103px; top: 652px; position: absolute; width: 58px; font-weight: 700; color: #000000;"></asp:Label>
      
        <asp:Label ID="Label19" runat="server" style="z-index: 1; left: 462px; top: 639px; position: absolute; font-weight: 700; color: #000000; width: 143px;" Text="Date of Admission*"></asp:Label>
        <asp:Button ID="Button1" runat="server"  style="z-index: 1; left: 190px; top: 764px; position: absolute; width: 359px; height: 43px; " Text="E n r o l l   N o w" OnClick="Button1_Click" />
        <asp:TextBox ID="TextBox2" required runat="server" style="z-index: 1; left: 389px; top: 144px; position: absolute; width: 250px; height: 29px"></asp:TextBox>
        
        <asp:Label ID="Label12" runat="server" style="z-index: 1; left: 277px; top: 436px; position: absolute; width: 137px; bottom: 354px; height: 26px; margin-top: 4px; font-weight: 700; color: #000000;" Text="City*"></asp:Label>
            <asp:TextBox ID="TextBox3" required runat="server" style="z-index: 1; left: 61px; top: 226px; position: absolute; width: 250px; height: 29px; right: 381px;" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        
        <asp:TextBox ID="TextBox4" required runat="server" style="z-index: 1; left: 393px; top: 220px; position: absolute; width: 250px; height: 29px" ></asp:TextBox>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 393px; top: 193px; position: absolute; font-weight: 700; color: #000000; width: 75px;" Text="E-mail*"></asp:Label>
        
            
        <asp:TextBox ID="TextBox5" required runat="server" style="z-index: 1; left: 66px; top: 309px; position: absolute; width: 145px; height: 25px" TextMode="Date"></asp:TextBox>
        
            <asp:TextBox ID="TextBox7" required runat="server" style="z-index: 1; left: 456px; top: 471px; position: absolute; width: 182px; height: 24px;"></asp:TextBox>
            <asp:DropDownList ID="DropDownList1" required runat="server" Height="29px" style="z-index: 1;font-size:16px; left: 250px; top: 309px; position: absolute" Width="150px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Please select</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
            <asp:FileUpload ID="FileUpload1" required runat="server" style="z-index: 1; left: 443px; top: 303px; position: absolute; width: 198px; height: 29px" />
        
        <asp:TextBox ID="TextBox9" required runat="server" style="z-index: 1; left: 101px; top: 675px; position: absolute; width: 129px; height: 29px"></asp:TextBox>
        
            <asp:TextBox ID="TextBox8" required runat="server" style="z-index: 1; left: 394px; top: 587px; position: absolute; width: 250px; height: 29px"></asp:TextBox>
        
        <asp:TextBox ID="TextBox11" required runat="server" style="z-index: 1; left: 462px; top: 659px; position: absolute; height: 29px; width: 184px; margin-top: 7px" TextMode="Date"></asp:TextBox>
        <asp:DropDownList ID="DropDownList2" required runat="server" style="z-index: 1;font-size:16px; left: 78px; top: 474px; position: absolute; right: 472px;" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>--Please select-- </asp:ListItem>
            <asp:ListItem>JHARKHAND</asp:ListItem>
            <asp:ListItem>BIHAR</asp:ListItem>
            <asp:ListItem>WEST BENGAL</asp:ListItem>
            <asp:ListItem>ODISHA</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" required runat="server" style="z-index: 1;font-size:15px; left: 270px; top: 471px; position: absolute; height: 22px; bottom: 326px;" Width="150px">
        </asp:DropDownList>
        
        <asp:Label ID="Label20" runat="server" Text="Duration :" style="z-index: 1; left: 285px; top: 646px; position: absolute; font-weight: 700; color: #000000; height: 20px;"></asp:Label>
        
        <asp:TextBox ID="TextBox6" required runat="server" style="z-index: 1; left: 72px; top: 380px; position: absolute; width: 562px; height: 41px; margin-top: 7px"></asp:TextBox>
        
        <asp:Label ID="Label13" runat="server" style="z-index: 1; left: 455px; top: 444px; position: absolute; width: 87px; font-weight: 700; color: #000000;" Text="Zip Code*"></asp:Label>      
       
        <br />
              <asp:Label ID="Label22" runat="server" style="z-index: 1; left: 600px; top: 16px; position: absolute; width: 59px; color: #000000" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label21" runat="server" ForeColor="Black" style="z-index: 1; left: 9px; top: 12px; position: absolute; width: 72px; color: #000000;" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList4" required runat="server" Height="35px" style="z-index: 1; left: 96px; top: 595px; position: absolute; right: 404px; height: 20px; margin-top: 2px;" Width="200px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
            <asp:ListItem>--Please select--</asp:ListItem>
        </asp:DropDownList>
        
        <br />
        <br />
        <br />
        <br />

        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox10" required runat="server" style="z-index: 1; left: 282px; top: 670px; position: absolute; height: 28px"></asp:TextBox>
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
       
    </div>
    </form>
</body>
</html>
