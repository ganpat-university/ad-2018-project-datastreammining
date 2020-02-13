<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="UMS.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<style>
body 
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

.submit_btn {
  background-color:#B82D27;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover
{
  opacity: 0.8;
}

.container 
{
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 20px;
}

   
</style>
     
<body>

<div class="container">

    <form>
    
    <div>

    <p>First Name : <asp:TextBox class="inputs" ID="txtFirstName" runat="server"></asp:TextBox></p>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name." ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
    
    <p>Last Name : <asp:TextBox class="inputs" ID="txtLastName" runat="server"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name." ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
    
    <p>Country : <asp:DropDownList class="inputs" ID="txtCountry" runat="server">
    <asp:ListItem>Select</asp:ListItem>
    <asp:ListItem>India</asp:ListItem>
    <asp:ListItem>USA</asp:ListItem>
    <asp:ListItem>Europe</asp:ListItem>
    <asp:ListItem>Canada</asp:ListItem>
    <asp:ListItem>UAE</asp:ListItem>
    <asp:ListItem>Sri-Lanka</asp:ListItem>
    <asp:ListItem>Paris</asp:ListItem>
    <asp:ListItem>Germany</asp:ListItem>
    <asp:ListItem>Poland</asp:ListItem>
    </asp:DropDownList></p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Choose your country." ControlToValidate="txtCountry"></asp:RequiredFieldValidator>

    <p>Subject : <textarea class="inputs" runat="server" name="description" id="txtSubject" cols="40" rows="10" ></textarea></p>
    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ControlToValidate="txtSubject" ValidationExpression="^[a-zA-Z'.\s]$" ErrorMessage="Invalid description">
    </asp:RegularExpressionValidator>
    
        <asp:Button class="submit_btn" ID="Button1" runat="server" Text="Submit"/>

    </div>
  
</form>
	<p>Ganpat University</p> 
	<p>Ganpat Vidyanagar, Mehsana-Gozaria Highway,</p>
	<p>PO - 384012,</p>
	<p>North Gujarat, INDIA</p>
	<p>Email:info@ganpatuniversity.ac.in</p>
	<p>Tele Fax : +91-2762-286080+91-2762-286080, 286924  Toll Free No :1800 233 12345</p>
	<p>Working Time: 09.00 am to 04.00 pm</p>

</div>
</body>
</asp:Content>
