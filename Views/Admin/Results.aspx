<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="SRMS.Views.Admin.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">



<div class="container-fluid">
     <div class="row">

          <div class="col">
          <div class="mb-3">
              <label for="GenderCb" class="form-label">Student Id</label>
              <asp:DropDownList runat="server" class="form-control" id="StudentCb" AutoPostBack="True">
                
              </asp:DropDownlist>  
        </div>
        </div>

        

              <div class="col">
              <div class="mb-3">
                  <label for="Sub1Tb" class="form-label">Sub 1</label>
                  <input type="text" class="form-control" id="Sub1Tb"  autocomplete="off" runat="server" required="required">
            </div>
            </div>

             <div class="col">
               <div class="mb-3">
                  <label for="Sub2Tb" class="form-label">Sub 2</label>
                  <input type="text" class="form-control" id="Sub2Tb"  autocomplete="off" runat="server" required="required">
            </div>
            </div>
            
            



        <!--  <div class="row">
              <div class="col">
              <div class="mb-3">
                      <label for="TolTb" class="form-label">Total</label>
                      <h5 id="TolTb" runat="server" class="text-success">....</h5>
             </div>
             </div>
             <div class="col">
             <div class="mb-3">
                        <label for="PerTb" class="form-label">Percentage</label>
                        <input type="text" class="form-control" id="PerTb"  autocomplete="off" runat="server" required="required">
             </div>
             </div>
             <div class="col">
             <div class="mb-3">
                        <label for="ClsTb" class="form-label">Class</label>
                        <input type="text" class="form-control" id="ClsTb"  autocomplete="off" runat="server" required="required">
             </div>
             </div>   -->
                  

           <div class="row">
            <lable id="ErrMsg" class="text-danger text-center" runat="server"></lable>
            <div class="col d-grid"><asp:Button Text="Edit" id="EditBtn" Class="btn btn-success btn-block" runat="server"  /></div>
            <div class="col d-grid"><asp:Button Text="Save" id="SaveBtn" CssClass="btn btn-primary btn-block" runat="server" OnClick="SaveBtn_Click"  /></div>
            <div class="col d-grid"><asp:Button Text="Delete" id="DeleteBtn" CssClass="btn btn-danger btn-block" runat="server"  /></div>
            </div>

            </div>
    </div>



    <div class="row">
        <h3 class="text-secondary text-center">Result Details</h3>
        <asp:GridView ID="ResultGV" class="table" runat="server" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" >
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
