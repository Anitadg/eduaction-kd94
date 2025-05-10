<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lesson1.aspx.cs" Inherits="lesson1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
       .heading{
        width:100;
        height:60px;
        border:1px solid darkseagreen;
        box-shadow:2px 5px 10px 2px;
     }
     .container{
       height:950px;
       border:2px solid darkseagreen;
       box-shadow: 2px 5px 10px 2px;
       color:darkolivegreen;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="container">

        <div class="heading">  
        <asp:Label ID="Label1" runat="server" Text="LESSON" style="z-index: 1;text-align:center;font-size:25px; left: 721px; top: 31px; position: absolute; width: 141px; height: 34px; font-weight: 700;" ForeColor="#333333"  ></asp:Label>
             <asp:HyperLink ID="HyperLink1" href="course1.aspx" runat="server" ImageHeight="30px" ImageUrl="~/icons/back (1).png" ImageWidth="30px" style="z-index: 1; left: 16px; top: 85px; position: absolute; height: 34px">HyperLink</asp:HyperLink>
      </div>
             <br />
             <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" style="z-index: 1; left: 34px; top: 133px; position: absolute; height: 50px; width: 239px" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="COURSENAME" HeaderText="Course Name" />
                 </Columns>
                 <EditRowStyle BackColor="#7C6F57" />
                 <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#E3EAEB" />
                 <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F8FAFA" />
                 <SortedAscendingHeaderStyle BackColor="#246B61" />
                 <SortedDescendingCellStyle BackColor="#D4DFE1" />
                 <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
             <br />
           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True"  style="z-index: 1; left: 35px; top: 364px; position: absolute; height: 40px; width: 410px" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:BoundField DataField="CHAPTER" HeaderText="Chapter" />
                   <asp:BoundField DataField="TITLE" HeaderText="Title" />
                   <asp:BoundField DataField="LFILE" HeaderText="CHAPTER DETAILS" />
                   <asp:BoundField DataField="URL" HeaderText="URL" />
               </Columns>
               <EditRowStyle BackColor="#7C6F57" />
               <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#E3EAEB" />
               <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#F8FAFA" />
               <SortedAscendingHeaderStyle BackColor="#246B61" />
               <SortedDescendingCellStyle BackColor="#D4DFE1" />
               <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
             <br />
           <iframe id="pdfFrame" runat="server"  style="width:50%; height:715px; margin-top:24px; z-index: 1; left: 734px; top: 77px; position: absolute;" visible="False"></iframe>                
        </div>
    </div>
    </form>
</body>
</html>
