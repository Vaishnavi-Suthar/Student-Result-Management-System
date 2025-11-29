<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="SRMS.Views.Admin.Students" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">

<div class="container-fluid">
     <div class="row">
          <div class="col">
            <div class="mb-3">
                  <label for="StuTb" class="form-label">Student Id</label>
                  <input type="text" class="form-control" id="StuTb"  autocomplete="off" runat="server" required="required">
            </div>
            </div>
               <div class="col">
              <div class="mb-3">
                  <label for="RnTb" class="form-label">Roll No</label>
                  <input type="text" class="form-control" id="RnTb"  autocomplete="off" runat="server" required="required">
            </div>
            </div>
             <div class="col">
               <div class="mb-3">
                  <label for="NameTb" class="form-label">Student Name</label>
                  <input type="text" class="form-control" id="NameTb"  autocomplete="off" runat="server" required="required">
            </div>
            </div>
             <div class="col">
               <div class="mb-3">
                  <label for="GenderCb" class="form-label">Gender</label>
                  <asp:DropDownList runat="server" class="form-control" id="GenderCb">
                     <asp:ListItem>Male</asp:ListItem>
                     <asp:ListItem>Female</asp:ListItem>
                  </asp:DropDownlist>  
            </div>
            </div>
            <div class="col">
               <div class="mb-3">
                      <label for="DOBTb" class="form-label">Date Of Birth</label>
                      <input type="date" class="form-control" id="DOBTb"  autocomplete="off" runat="server" >
                </div>
            </div>



          <div class="row">
             <div class="col">
                  <div class="mb-3">
                        <label for="CourseTb" class="form-label">Degree of Course</label>
                        <input type="text" class="form-control" id="CourseTb"  autocomplete="off" runat="server" required="required">
                  </div>
                  </div>
                     <div class="col">
                    <div class="mb-3">
                        <label for="CnameTb" class="form-label">Collage Name</label>
                        <input type="text" class="form-control" id="CnameTb"  autocomplete="off" runat="server" required="required">
                  </div>
                  </div>
                   <div class="col">
                        <div class="mb-3">
                        <label for="SemTb" class="form-label">Semester</label>
                         <asp:DropDownList runat="server" class="form-control" id="SemTb">
                            
                         </asp:DropDownlist> 
                  </div>
                  </div>
                <div class="col">
                    <div class="mb-3">
                        <label for="YearTb" class="form-label">Academic year</label>
                        <input type="text" class="form-control" id="YearTb"  autocomplete="off" runat="server" required="required">
                  </div>
                  </div>
                  <div class="col">
                        <div class="mb-3">
                        <label for="MonTb" class="form-label">Mobile No</label>
                        <input type="text" class="form-control" id="MonTb"  autocomplete="off" runat="server" required="required">
                  </div>
                  </div>
          
            </div>

           <div class="row">
              <div class="col">
               <div class="col-md-1"></div>
                   <div class="mb-4">
                         <label for="EmailTb" class="form-label">Email</label>
                         <input type="text" class="form-control" id="EmailTb"  autocomplete="off" runat="server" required="required">
                   </div>
                   </div>
                   <div class="col">
                         <div class="mb-4">
                         <label for="PwdTb" class="form-label">Password</label>
                         <input type="password" class="form-control" id="PwdTb"  autocomplete="off" runat="server" >
                   </div>
                   </div>
                   </div>

           <div class="row">
            <lable id="ErrMsg" class="text-danger text-center" runat="server"></lable>
            <div class="col d-grid"><asp:Button Text="Edit" id="EditBtn" Class="btn btn-success btn-block" runat="server" OnClick="EditBtn_Click" /></div>
            <div class="col d-grid"><asp:Button Text="Save" id="SaveBtn" CssClass="btn btn-primary btn-block" runat="server" OnClick="SaveBtn_Click" /></div>
            <div class="col d-grid"><asp:Button Text="Delete" id="DeleteBtn" CssClass="btn btn-danger btn-block" runat="server" OnClick="DeleteBtn_Click" /></div>
            </div>

            </div>
    </div>



    <div class="row">
        <h3 class="text-secondary text-center">Studenrs Details</h3>
        <asp:GridView ID="StudentGV" class="table" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="StudentGV_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
     </div>

</asp:Content>