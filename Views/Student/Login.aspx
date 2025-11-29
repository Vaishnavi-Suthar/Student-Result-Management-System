

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SRMS.Views.Student.Login"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        *{
            font-family:'Poppins';
        }
    </style>



</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">

     <div class="container-fluid">
     <div class="row">
         <div class="col"></div>
         <div class="col">

         </div>
         <div class="col">
             <img src="../../Images/SRMS-logo.png" />
         </div>
         <div class="col"></div>
         <div class="col"></div>
     </div>
     <div class="row">
          <div class="col"></div>
          <div class="col">
                  <form>

                      <div class="mb-3">
                        <label for="StuTb" class="form-label">Username</label>
                        <input type="text" class="form-control" id="StuTb" aria-describedby="StuHelp" autocomplete="off" runat="server" required="required">
                        <div id="StuHelp" class="form-text">Enter your Enrollment No.</div>
                      </div>

                     <div class="mb-3">
                        <label for="PwdTb" class="form-label">Password</label>
                        <input type="password" class="form-control" id="PwdTb">
                      </div>
                    
                      <p><a class="link-offset-2 link-underline link-underline-opacity-10" href="#"> Forgot Password ? </a></p>

                      <div class="d-grid">
                          <Label id="ErrMsg" class="text-danger" runat="server" />
                            <asp:Button ID="LoginBtn" runat="server" Text="Login" class="btn btn-warning" OnClick="LoginBtn_Click" /> 
                        
                        </div>
                  </form>
          </div>
          <div class="col"></div>
     </div>
</div>


</asp:Content>


 