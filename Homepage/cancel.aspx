<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/MasterPage.master" AutoEventWireup="true" CodeFile="cancel.aspx.cs" Inherits="Homepage_cancel" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <div class="know">
      
         <div class="text-center">

             <br />
             <br />
             <br />
             <h3> For the cancelation , Fill the following details as same as it was during booking  </h3>
             <br />
             <hr style="color:#2F7CB8" />
             <br />
             <br />

         </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
             <b>Name :</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="209px" BorderColor="#2F7CB8" BorderStyle="Solid"></asp:TextBox> &nbsp;<br />
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <b> Contact Number :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="211px" BorderColor="#2F7CB8" BorderStyle="Solid"></asp:TextBox><br />
             <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <b> Booking ID :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="211px" BorderColor="#2F7CB8" BorderStyle="Solid"></asp:TextBox><br />
             <br />
        <br/>
        <br />
             <div class="text-center">
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" BorderColor="White" BorderStyle="Double" Font-Bold="True" Height="31px" Width="85px" BackColor="#2F7CB8" Font-Overline="False" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click"  />
             </div>
    </div>


</asp:Content>


