<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="DinningManagementProject.admin.account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        
        <div class="col-lg-2 col-md-2 col-sm-2">
            <asp:Button ID="btnDaily" runat="server" CssClass="btn btn-success" Text="Daily Cost" OnClick="btnDaily_Click" />
            <br />
            <br />
            <asp:Button ID="btnUser" runat="server" CssClass="btn btn-success" Text="User Account" OnClick="btnUser_Click" />
            <br />
            <br />
            <asp:Button ID="btnViewCost" runat="server" CssClass="btn btn-success" Text="View Cost" OnClick="btnViewCost_Click" />
        </div>

        <div class="col-lg-8 col-md-8 col-sm-8">
          
            <asp:Panel ID="PanelDalyCost" runat="server" BorderColor="#FF0066">
                <fieldset>
                    <legend>Daily Cost</legend>
                    <table class="form-group">
                        <tr>
                            <td>Date :</td>
                            <td><asp:Label ID="lbldate" runat="server" Text=""></asp:Label> </td>
                        </tr>
                        <caption>
                            <br />
                            <tr>
                                <td>Cost :</td>
                                <td>
                                    <asp:TextBox ID="txtCost" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <caption>
                                <br />
                                <tr>
                                    <td>Meal :</td>
                                    <td>
                                        <asp:TextBox ID="txtMeal" runat="server" CssClass="form-control"></asp:TextBox>
                                    </td>
                                </tr>
                                <caption>
                                    <br />
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnCostSave" runat="server" CssClass="btn btn-default" OnClick="btnCostSave_Click" Text="Save" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnReset" runat="server" CssClass="btn btn-defaul" Text="Reset" OnClick="btnReset_Click" />
                                        </td>
                                    </tr>

                                </caption>
                            </caption>
                        </caption>
                        <tr>
                            <td></td>
                            <td><h2> <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label></h2></td>
                        </tr>
                       
                    </table>
                </fieldset>

            </asp:Panel>



            <asp:Panel ID="PanelUserAcount" runat="server">
            <fieldset>
                <legend>Add New User balance</legend>
                <div class="form-group">
                    <h3>User ID :</h3>
                    <asp:TextBox ID="txtUserID" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <h3>Balance :</h3>
                    <asp:TextBox ID="txtTAKA" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="btnUserAccountSave" CssClass="btn btn-danger btn-lg" runat="server" Text="ADD" OnClick="btnUserAccountSave_Click" />
                <asp:Button ID="btnOldUserUpdate" CssClass="btn btn-default" runat="server" Text="Update Old User" OnClick="btnOldUserUpdate_Click" />
                <h2><asp:Label ID="lblUserOK" runat="server" Text=""></asp:Label></h2>
            </fieldset>
            </asp:Panel>

            <asp:Panel ID="PanelOldUser" runat="server">
            <fieldset>
                <legend> User balance Update</legend>
                <div class="form-group">
                    <h3>User ID :</h3>
                    <asp:TextBox ID="txtSrcID" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:Button ID="btnSRC" runat="server" Text="Sarch" CssClass="btn btn-danger" OnClick="btnSRC_Click" />
                </div>

                <div class="form-group">
                    <h3>User ID :</h3>
                    <h3><asp:Label ID="lblUid" runat="server" Text=""></asp:Label></h3>
                </div>
                <div class="form-group">
                    <h3>User First Name :</h3>
                    <h3><asp:Label ID="lbluFname" runat="server" Text=""></asp:Label></h3>
                </div>
                <div class="form-group">
                    <h3>User Last Name :</h3>
                    <h3><asp:Label ID="lblLstName" runat="server" Text=""></asp:Label></h3>
                </div>
                <div class="form-group">
                    <h3>Balance :</h3>
                    <asp:TextBox ID="txtOUbalance" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="btnUpdate" CssClass="btn btn-danger btn-lg" runat="server" Text="Update" OnClick="btnUserAccountSave_Click" />
                <h2><asp:Label ID="Label1" runat="server" Text=""></asp:Label></h2>
            </fieldset>
            </asp:Panel>

            <asp:Panel ID="PanelCostView" runat="server">
            <asp:GridView ID="GridDailyCost" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="250px" Width="520px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
        </asp:Panel>
                
        </div>

        
            
        



        <div class="col-lg-2 col-md-2 col-sm-2">

        </div>

    </div>
</asp:Content>
