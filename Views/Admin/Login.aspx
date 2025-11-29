<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SRMS.Views.Admin.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }

        /* Center box with flex */
        .full-center {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-box {
            background: #ffffff;
            padding: 35px;
            width: 100%;
            border-radius: 12px;
            box-shadow: 0px 0px 18px rgba(0,0,0,0.10);
        }

        .form-text {
            font-size: 12px;
            color: #777;
        }

        .mb-3 label {
            font-weight: 500;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">

    <div class="container full-center">
        <div class="col-md-4">

            <div class="login-box">

                <h3 class="text-center mb-4">Admin Login</h3>

                <!-- USERNAME -->
                <div class="mb-3">
                    <label for="UsernameTb" class="form-label">Username</label>
                    <input type="text" class="form-control" id="UsernameTb"
                           runat="server" autocomplete="off" />
                    <div class="form-text">Enter your Admin Username.</div>
                </div>

                <!-- PASSWORD -->
                <div class="mb-3">
                    <label for="PasswordTb" class="form-label">Password</label>
                    <input type="password" class="form-control" id="PasswordTb"
                           runat="server" />
                    <div class="form-text">Enter your Admin Password.</div>
                </div>

                <!-- Forgot Password -->
                <p class="mt-2">
                    <a class="link-offset-2 link-underline-opacity-10" href="#">
                        Forgot Password?
                    </a>
                </p>

                <!-- ERROR MESSAGE -->
                <label id="ErrMeg" class="text-danger" runat="server"></label>

                <!-- LOGIN BUTTON -->
                <div class="d-grid mt-3">
                    <asp:Button runat="server" ID="LoginBtn" Text="Login"
                                CssClass="btn btn-dark text-white"
                                OnClick="LoginBtn_Click" />
                </div>

            </div>

        </div>
    </div>

</asp:Content>
