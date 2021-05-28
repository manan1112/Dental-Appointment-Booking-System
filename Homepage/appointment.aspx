<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page/MasterPage.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="Homepage_appointment" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

<br />
    
         <div class="know">
         <div class="text-center">
       <h2> Clinic Timings<br /></h2>
          </div>
    <h3>
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Morning : 9am-2pm &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Evening : 5pm-7pm
    </h3>
             <br />
             <hr style="color:#2F7CB8" />
             <br />
              <div class="text-center">
       <h4> Appointment Form <br /></h4>
          
          </div>
             
             <br />
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
             <b> Address :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox4" runat="server" Height="30px" TextMode="MultiLine" Width="211px" BorderColor="#2F7CB8" BorderStyle="Double" BorderWidth="2px"></asp:TextBox> 
             &nbsp;&nbsp;&nbsp;
           &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
             <table>
                <tr>
                <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <b> Date :</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="TextBox5" runat="server" Height="16px" Width="209px" OnClick="ImageButton1_Click" BorderColor="#2F7CB8" BorderStyle="Solid"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" 
                    ImageUrl="../images/date (1).png" runat="server" ImageAlign="AbsBottom" Height="22px" Width="21px" OnClick="ImageButton1_Click" />
                    <br />
                    <div class="Calendar1">
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="165px" Width="266px" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender">

            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
           </asp:Calendar>
           </div>     
          </td>
      </tr>
    </table>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
             <b>Time :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:DropDownList ID="DropDownList1" runat="server" Width="212px" onmousedown="this.size = 3;" onfocusout="this.size=1;" AutoPostBack="True" BackColor="White" Font-Bold="True" Font-Names="Verdana" Font-Overline="False" ForeColor="#2F7CB8" BorderColor="#2F7CB8" BorderStyle="Solid" BorderWidth="2px">
                 <asp:ListItem>9:00</asp:ListItem>
                <asp:ListItem>9:30</asp:ListItem>
                <asp:ListItem>10:00</asp:ListItem>
                <asp:ListItem>10:30</asp:ListItem>
                <asp:ListItem>11:00</asp:ListItem>
                <asp:ListItem>11:30</asp:ListItem>
                <asp:ListItem>12:00</asp:ListItem>
                <asp:ListItem>12:30</asp:ListItem>
                <asp:ListItem>1:00</asp:ListItem>
                <asp:ListItem>1:30</asp:ListItem>
                <asp:ListItem>5:00</asp:ListItem>
                <asp:ListItem>5:30</asp:ListItem>
                <asp:ListItem>6:00</asp:ListItem>
                <asp:ListItem>6:30</asp:ListItem>
            </asp:DropDownList>
            <br/><br/>
             <div class="text-center">
            <asp:Button ID="Button1" runat="server" Text="SUBMIT" BorderColor="White" BorderStyle="Double" Font-Bold="True" Height="31px" Width="85px" BackColor="#2F7CB8" Font-Overline="False" Font-Size="Medium" ForeColor="White" OnClick="Button1_Click"  />
             </div>
             <br />

             <br />

         </div>



</asp:Content>