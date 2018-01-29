<%@ Page Title="" Language="C#" MasterPageFile="~/teacher/teacher.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="DinningManagementProject.teacher.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderLeftSide" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderMainBody" runat="server">
    <div class="col-xs-12 col-sm-4 col-lg-4 col-md-4">

    </div>

    <div class="col-xs-12 col-sm-4 col-lg-4 col-md-4">
        <table style="width:400px; height:200px; background-color:#EFF284; margin: 100px 200px 300px 30px;">
            <tr>
                <td style="text-align:center">
                   <h1> <asp:Label ID="lblTime" runat="server" Text="time"></asp:Label></h1>
                </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:Button ID="btnMilStop" runat="server" Text="Stop Tomorrow Meal" CssClass="btn btn-danger btn-lg" OnClick="btnMilStop_Click"/>
                </td>
            </tr>
            <tr><td style="text-align:center">
                <asp:Label ID="lblmess" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Blue"></asp:Label>
                </td></tr>
        </table>
    </div>

    <div class="col-xs-12 col-sm-4 col-lg-4 col-md-4">
        <ul class="nav navbar-nav navbar-right">
                          <li><a href="#"><span class="glyphicon glyphicon-user"></span>
                              <asp:Label ID="lblUname" runat="server" Text="User Name" CssClass="label label-danger" Font-Bold="True" Font-Size="Large" ></asp:Label>
                              </a></li>
                          <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
                              <asp:Button ID="btnLogut" runat="server" Text="Logout" OnClick="btnLogut_Click" />
                              </a></li>
                        </ul>

    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderRightSide" runat="server">
     
</asp:Content>
