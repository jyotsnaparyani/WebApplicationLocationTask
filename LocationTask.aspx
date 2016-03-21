<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LocationTask.aspx.cs" Inherits="WebApplicationLocationTask.LocationTask" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Distance Finding between 2 Locations</title>
    <style>

        label {
            text-align:left
        }
        textbox {
        text-align : right
        }
        button {
          
        text-align : center
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div  align="center">
        <asp:Label ID="lblWebPage" runat="server" Text="Distance Finding between 2 Locations" Font-Bold="true" Font-Size="Large"></asp:Label>
         </div>
        <br />
        <asp:Label ID="lblNote" runat="server" Text="X value is Longitude & should be between -180 to 180"></asp:Label>
        <br />
        <asp:Label ID="lblNote1" runat="server" Text="Y value is Latitude & should be between -90 to 90"></asp:Label>
        <br />
        <br />
    <div  align="center">
        <asp:Label ID="lblInitialX" runat="server" Text="Inital X Location : " CssClass="label"></asp:Label>
        <asp:TextBox ID="tbInitialX" runat="server" CssClass="textbox" CausesValidation="true" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvInitialX" runat="server" ErrorMessage="Initial X Value is required " ControlToValidate="tbInitialX" ForeColor="Red" ></asp:RequiredFieldValidator>
        <asp:Label ID="lblInitialY" runat="server" Text="Inital Y Location : "></asp:Label>
        <asp:TextBox ID="tbInitialY" runat="server" CausesValidation="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvInitialY" runat="server" ErrorMessage="Initial Y Value is required " ControlToValidate="tbInitialY" ForeColor="Red" ></asp:RequiredFieldValidator>
        <br />
        <br />
        <div align="center">
        <asp:Label ID="lblRemainingLoc" runat="server" Text="Enter Following 10 Locations" ></asp:Label>
            </div>
        <br />
        <asp:Label ID="lbl1X" runat="server" Text="Location 1 X Value : "></asp:Label>
        <asp:TextBox ID="tb1X" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb1X" runat="server" ErrorMessage="X Value is required " ControlToValidate="tb1X" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <asp:Label ID="lbl1Y" runat="server" Text="Location 1 Y Value : "></asp:Label>
        <asp:TextBox ID="tb1Y" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb1Y" runat="server" ErrorMessage="Y Value is required " ControlToValidate="tb1Y" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <br />
        <br />

        <asp:Label ID="lbl2X" runat="server" Text="Location 2 X Value : "></asp:Label>
        <asp:TextBox ID="tb2X" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb2X" runat="server" ErrorMessage="X Value is required " ControlToValidate="tb2X" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <asp:Label ID="lbl2Y" runat="server" Text="Location 2 Y Value : "></asp:Label>
        <asp:TextBox ID="tb2Y" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb2Y" runat="server" ErrorMessage="Y Value is required " ControlToValidate="tb2Y" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <br />
        <br />

        <asp:Label ID="lbl3X" runat="server" Text="Location 3 X Value : "></asp:Label>
        <asp:TextBox ID="tb3X" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb3X" runat="server" ErrorMessage="X Value is required " ControlToValidate="tb3X" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <asp:Label ID="lbl3Y" runat="server" Text="Location 3 Y Value : "></asp:Label>
        <asp:TextBox ID="tb3Y" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb3Y" runat="server" ErrorMessage="Y Value is required " ControlToValidate="tb3Y" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <br />
        <br />
        <asp:Label ID="lbl4X" runat="server" Text="Location 4 X Value : "></asp:Label>
        <asp:TextBox ID="tb4X" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb4X" runat="server" ErrorMessage="X Value is required " ControlToValidate="tb4X" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <asp:Label ID="lbl4Y" runat="server" Text="Location 4 Y Value : "></asp:Label>
        <asp:TextBox ID="tb4Y" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb4Y" runat="server" ErrorMessage="Y Value is required " ControlToValidate="tb4Y" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <br />
        <br />
        <asp:Label ID="lbl5X" runat="server" Text="Location 5 X Value : "></asp:Label>
        <asp:TextBox ID="tb5X" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb5X" runat="server" ErrorMessage="X Value is required " ControlToValidate="tb5X" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <asp:Label ID="lbl5Y" runat="server" Text="Location 5 Y Value : "></asp:Label>
        <asp:TextBox ID="tb5Y" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb5Y" runat="server" ErrorMessage="Y Value is required " ControlToValidate="tb5Y" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <br />
        <br />
        <asp:Label ID="lbl6X" runat="server" Text="Location 6 X Value : "></asp:Label>
        <asp:TextBox ID="tb6X" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb6X" runat="server" ErrorMessage="X Value is required " ControlToValidate="tb6X" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <asp:Label ID="lbl6Y" runat="server" Text="Location 6 Y Value : "></asp:Label>
        <asp:TextBox ID="tb6Y" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb6Y" runat="server" ErrorMessage="Y Value is required " ControlToValidate="tb6Y" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <br />
        <br />
        <asp:Label ID="lbl7X" runat="server" Text="Location 7 X Value : "></asp:Label>
        <asp:TextBox ID="tb7X" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb7X" runat="server" ErrorMessage="X Value is required " ControlToValidate="tb7X" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <asp:Label ID="lbl7Y" runat="server" Text="Location 7 Y Value : "></asp:Label>
        <asp:TextBox ID="tb7Y" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb7Y" runat="server" ErrorMessage="Y Value is required " ControlToValidate="tb7Y" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <br />
        <br />
        <asp:Label ID="lbl8X" runat="server" Text="Location 8 X Value : "></asp:Label>
        <asp:TextBox ID="tb8X" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb8X" runat="server" ErrorMessage="X Value is required " ControlToValidate="tb8X" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <asp:Label ID="lbl8Y" runat="server" Text="Location 8 Y Value : "></asp:Label>
        <asp:TextBox ID="tb8Y" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb8Y" runat="server" ErrorMessage="Y Value is required " ControlToValidate="tb8Y" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <br />
        <br />
        <asp:Label ID="lbl9X" runat="server" Text="Location 9 X Value : "></asp:Label>
        <asp:TextBox ID="tb9X" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb9X" runat="server" ErrorMessage="X Value is required " ControlToValidate="tb9X" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <asp:Label ID="lbl9Y" runat="server" Text="Location 9 Y Value : "></asp:Label>
        <asp:TextBox ID="tb9Y" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb9Y" runat="server" ErrorMessage="Y Value is required " ControlToValidate="tb9Y" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <br />
        <br />
        <asp:Label ID="lbl10X" runat="server" Text="Location 10 X Value : "></asp:Label>
        <asp:TextBox ID="tb10X" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb10X" runat="server" ErrorMessage="X Value is required " ControlToValidate="tb10X" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <asp:Label ID="lbl10Y" runat="server" Text="Location 10 Y Value : "></asp:Label>
        <asp:TextBox ID="tb10Y" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvtb10Y" runat="server" ErrorMessage="Y Value is required " ControlToValidate="tb10Y" ForeColor="Red" ></asp:RequiredFieldValidator>
     
        <br />
        <br />
        <div align="center">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" OnClick="btnSubmit_Click" />
        </div>
    </div>
        
        <div align="center">
            <asp:Label ID="lblMSG" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lbl1XY" runat="server" Text=""></asp:Label> 
            <br />
            <asp:Label ID="lbl2XY" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lbl3XY" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lbl4XY" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lbl5XY" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lbl6XY" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lbl7XY" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lbl8XY" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lbl9XY" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="lbl10XY" runat="server" Text=""></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
