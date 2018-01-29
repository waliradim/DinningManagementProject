<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/teacher.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="DinningManagementProject.teacher.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLeftSide" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMainBody" runat="server">
     <div class="col-xs-12 col-sm-2 col-lg-2 col-md-2">
        
    </div>

     <div class="col-xs-12 col-sm-8 col-lg-8 col-md-8">
          <table style="align:center; padding:25px;">
             <tr >
                 <td colspan="3"> 
                     <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Profile" CssClass="btn btn-danger btn-lg" />
                 </td>
                
             </tr>
              
             <tr>
                 <td><asp:Label ID="lblEid" runat="server" Text="Employee ID :"></asp:Label> </td>
                 <td colspan="2"><asp:Label ID="lblid" runat="server"></asp:Label></td>

             </tr>
             <tr>
                 <td> <asp:Label ID="lblBalance" runat="server" Text="Balance :"></asp:Label></td>
                 <td colspan="2"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>

             </tr>
              <tr class="form-group">
                 <td><asp:Label ID="lblFname" runat="server" Text="First Name" ValidateRequestMode="Disabled"></asp:Label> </td>
                 <td> <asp:TextBox ID="txtFname" runat="server" CssClass="form-control focus" ValidationGroup="profile"></asp:TextBox></td>
                    <td> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFname" ErrorMessage="Please Fillup"></asp:RequiredFieldValidator>
                  </td>
             </tr>
              <tr class="form-group">
                 <td><asp:Label ID="lblLname" runat="server" Text="Last Name"></asp:Label> </td>
                 <td> <asp:TextBox ID="txtLname" runat="server" CssClass="form-control focus" ValidationGroup="profile"></asp:TextBox></td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLname" ErrorMessage="Please Fillup"></asp:RequiredFieldValidator>
                  </td>
             </tr>
              <tr class="form-group">
                 <td><asp:Label ID="lbldes" runat="server" Text="Designation"></asp:Label> </td>
                 <td> <asp:TextBox ID="txtDeg" runat="server" CssClass="form-control focus" ValidationGroup="profile"></asp:TextBox></td>
              <td> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDeg" ErrorMessage="Please Fillup"></asp:RequiredFieldValidator>
                  </td>
             </tr>
              <tr class="form-group">
                 <td><asp:Label ID="lblUname" runat="server" Text="User Name"></asp:Label> </td>
                 <td> <asp:TextBox ID="txtUname" runat="server" CssClass="form-control focus" ValidationGroup="profile"></asp:TextBox></td>
                 <td> 
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" ErrorMessage="Please Fillup"></asp:RequiredFieldValidator>
                  </td>
             </tr>
              <tr class="form-group">
                 <td><asp:Label ID="lblPword" runat="server" Text="Password"></asp:Label> </td>
                 <td> <asp:TextBox ID="txtPWord" runat="server" CssClass="form-control focus" ValidationGroup="profile"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password must be 6 to 20 chars long" ControlToValidate="txtPWord" ValidationExpression="&quot;^.{6,20}$&quot;"></asp:RegularExpressionValidator></td>
             </tr>
              
         </table>
    </div>

     <div class="col-xs-12 col-sm-2 col-lg-2 col-md-2">
         <ul class="nav navbar-nav">
                          <li><a href="#"><span class="glyphicon glyphicon-user"></span>
                              <asp:Label ID="lbluN" runat="server" Text="User Name" CssClass="label label-danger" Font-Bold="True" Font-Size="Large" ></asp:Label>
                              </a></li>
                          <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
                              <asp:Button ID="btnLogut" runat="server" Text="Logout" OnClick="btnLogut_Click" />
                              </a></li>
                        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderRightSide" runat="server">
</asp:Content>
