<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Student/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentResult.aspx.cs" Inherits="SRMS.Views.Student.StudentResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        *{
            font-family:'Bookman Old Style';
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">

        <div class="row">
            <div class="col-md-3">
                <img src="../../Images/SRMS-logo.png" />
            </div>
            <div class="col-md-7">
                <h3>My Space </h3>
            </div>
            <div class="col-md-2">
                 <img src="../../Images/SRMS-logo.png" />
            </div>
        </div>

        <div class="row mt-2 mt-4">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <table class="table table-bordered">
                    <tr><td><h5>Agricultural Inforation Technology</h5></td></tr>
                     <tr>

                        <td><span class="h5">Student Id :</span><span class="h6" id="StuLbl" runat="server"></span></td>
                        <td><span class="h5">Student Name :</span><span class="h6" id="NameLbl" runat="server"></span></td>
                        <td><span class="h5">Student RollNo :</span><span class="h6" id="RnLbl" runat="server"></span></td>
                    </tr>
                    <tr>
                        <td><span class="h5">Student Gender :</span><span class="h6" id="GenLbl" runat="server"></span></td>
                    </tr>

                   
                </table>
            </div>
            <div class="col-md-1"></div>
         </div>

        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                 <table class="table table-bordered">
                     <tr>
                         <th>Course</th><th>Type</th><th>Full Marks</th><th>Passing Marks</th><th>Obtainde Marks</th>
                     </tr>
                     <tr>
                         <td>Subject 1</td><td>Theory</td><td>40</td><td>38</td><td><span id="S1Marks" runat="server">xxx</span></td>
                     </tr>
                     <tr>
                        <td>Subject 2</td><td>Practical</td><td>56</td><td>78</td><td><span id="S2Marks" runat="server">xxx</span></td>
                    </tr>
                      <tr>
                         <td>Subject 3</td><td>Theory</td><td>40</td><td>38</td><td><span id="S3Marks" runat="server">xxx</span></td>
                     </tr>
                     <tr>
                        <td>Subject 4</td><td>Practical</td><td>56</td><td>78</td><td><span id="S4Marks" runat="server">xxx</span></td>
                    </tr>
                     <tr>
                        <td>Total : <span class="h6 text-center">150</span></td><td colspan="2">Marks Obtaines :<span class="h6 text-danger" id="TotalObtaines" runat="server"> Obt</span></td><td><span class="h6">Per :</span><span id="Per" class="h6 text-danger"> %%%</span></td><td><span class="h6 text-primary">Class :</span><span id="class" runat="server" class="h6 text-danger"> Class</span></td>
                    </tr>
                  </table>
            </div>
            <div class="col-md-1"></div>
           
        </div>

    </div>

</asp:Content>
