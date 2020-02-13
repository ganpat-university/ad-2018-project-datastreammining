<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="UMS.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
body 
* {box-sizing: border-box;}

input[type=text], select, textarea 
{
  width: 100%;
  padding: 12px 20px;
  margin :8px 0;
  display: inline-block;
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
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  width: 100%;
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


    <form>
	<div class="container">
		<p>Username : <asp:TextBox class="inputs" ID="txtUserName" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Username." ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
	    </p>

		<p>Password : <asp:TextBox class="inputs" ID="txtPassword" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesn't match." ControlToValidate="txtPassword"></asp:CompareValidator>
		</p> 
		
        <asp:Button class="submit_btn" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        <asp:Label ID="txtLabel" runat="server" Text="Incorrect user credentials." ForeColor="Red"></asp:Label>
		<label>
			<input type="checkbox" checked="checked" name="remember"> Remember me
		</label>
	</div>
	
	<div class="container" style="background-color:#f1f1f1">
		<button type="button" class="cancelbtn">Cancel</button>
		<span class="pwd">Forgot <a href="#">password?</a></span>
	</div>
  
</form>
</asp:Content>
