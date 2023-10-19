<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="LoginGrocery.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-jrQSSZdS5-uRbWBTu_50lbqj8sPxC3rpgA&usqp=CAU');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container">
       <div class ="row">
           <div class ="col-md-6 mx-auto">
               <br>
               <div class ="card">
                   <div class ="card-body">
                       
                       <div class ="row">
                           <div class="col">
                               <center>
                                   <img src="Images/AdminLogin.png" width="130" height="130">

                               </center>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               <center>
                                   <h3>Admin Login</h3>

                               </center>
                           </div>
                       </div>

                        <div class ="row">
                           <div class="col">
                               <hr>
                           </div>
                       </div>

                       <div class ="row">
                           <div class="col">
                               <label>Admin ID</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="AdminId" runat="server" placeholder="Admin ID"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Admin ID is Required" ControlToValidate="AdminId" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="AdminId" ErrorMessage="UserId must contain atleast 3 characters and atleast 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*\d)(?=.*[a-zA-Z].*[a-zA-Z].*[a-zA-Z]).{3,}$"></asp:RegularExpressionValidator>
                               </div>
                             

                              <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                               <label>Password</label>
                               <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="Password" runat="server" placeholder="Password" TextMode="Password" ClientIDMode="Static"></asp:TextBox>
                                           <asp:CheckBox ID="pass" runat="server" Text=" Show Password" onclick="showpass(this)" />
                                   <script type="text/javascript">
                                       function showpass(check_box) {
                                           var spass = document.getElementById("Password");
                                           if (check_box.checked)
                                               spass.setAttribute("Type", "Text");
                                           else
                                               spass.setAttribute("Type", "Password");
                                       }
                               </script>
                                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password is Required" ControlToValidate="Password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="Password" ErrorMessage="Password must contain atleast 6 characters including atleast 1 special character and 1 digit" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-zA-Z]{3,})(?=.*\d)(?=.*[!@#$%^&amp;*(),.?&quot;:{}|&lt;&gt;]).{6,}$"></asp:RegularExpressionValidator>

                               </div>
                               <br>
                               
                                <div class="form-group">
                                    <asp:Button class="btn btn-success w-100 btn-lg" ID="Button3" runat="server" Text="Login" OnClick="Button3_Click"  />
                               </div>


</asp:Content>
