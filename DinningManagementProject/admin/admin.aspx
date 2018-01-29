<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="DinningManagementProject.admin.admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2" style="border-left-color:antiquewhite">

            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8" style="border-left-color:antiquewhite">
                <asp:Panel ID="homeDisplay" runat="server">
                    <table style="width:600px; height:200px; background-color:#EFF284; margin: 100px 200px 300px 30px;">
                        <tr>
                            <td align="center"><h2>Tomorrow:  </h2></td>
                            <td><h1>
                                <asp:Label ID="lblDateT" runat="server" Text=""></asp:Label> </h1></td>
                        </tr>
                        <tr>
                            <td align="center"> <h2>Total Member: </h2></td>
                            <td><h2> <asp:Label ID="lblAllMember" runat="server" Text=""></asp:Label></h2></td>
                        </tr>
                        <tr>
                            <td align="center"><h2>Meal Stop: </h2></td>
                            <td><h2> <asp:Label ID="lblMealStop" runat="server" Text=""></asp:Label></h2></td>
                        </tr>
                        <tr>
                            <td align="center"><h2>Tomorrow Total Meal: </h2> </td>
                            <td style="color:crimson"><h2>
                                <asp:Label ID="lblMeal" runat="server" Text=""></asp:Label></h2> </td>
                        </tr>
                    </table>
                </asp:Panel>

            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2" style="border-left-color:antiquewhite">

            </div>

        </div>
</asp:Content>
