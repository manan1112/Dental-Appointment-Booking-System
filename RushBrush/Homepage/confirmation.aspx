<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/MasterPage.master" AutoEventWireup="true" CodeFile="confirmation.aspx.cs" Inherits="Homepage_confirmation" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

<div class="text-center">


    <br />
    <br />
    <asp:Image ID="Image2" runat="server" Height="219px" ImageUrl="~/images/greentick-1.png" Width="319px" />
    <div class="know">
    <h3>APPOINTMENT CONFIRMED !! </h3><br />

    <h4><b>Your Booking ID is  </b>
        <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
        </h4>
       
        <h5>Please note this for future reference. Thank you :)</h5>
    </div>

</div>


</asp:Content>





