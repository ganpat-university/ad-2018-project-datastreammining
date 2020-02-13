<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="UMS.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
		body
		{
			background-color : white;
		}


        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #B82D27;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

button:hover 
{
    opacity: 0.8;
}
</style>

    <form>
	<div class="container">
		<label for="uname"><b>Username</b></label>
		<input type="text" placeholder="Enter Username" name="name" required>
	
		<label for="pwd"><b>Password</b></label>
		<input type="password" placeholder="Enter Password" name="pwd" required>
	
		<button type="submit">Login</button>
	
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
