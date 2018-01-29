<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DinningManagementProject.teacher.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title></title>
    <link href="../style/bootstarp/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../style/loginStyle.css" rel="stylesheet" type="text/css" />
    <script src="../style/bootstarp/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
            
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

            <asp:Panel ID="PanelUser" runat="server">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/dinning MAnagement.jpg" Width="100%" />
            <%--<img src="../img/dinning MAnagement.jpg" class="img-responsive" alt="" />--%>
          <table align="center">
              <tr>
                  <td colspan="2" style="text-align:center; text-decoration-color:brown">
                      <h2>Welcome</h2>
                  </td>
                  
              </tr>
               <tr class="form-group">
                  <td>
                      <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="User Name"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtLogUname" CssClass="form-control focus" runat="server"></asp:TextBox>
                  </td>
              </tr>
               <tr class="form-group">
                  <td>
                      <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Password"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtLogPword" CssClass="form-control focus" runat="server" TextMode="Password"></asp:TextBox>
                  </td>
              </tr>
               <tr>
                  <td colspan="2" align=center>
                      <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-lg btn-danger" Font-Bold="True" ForeColor="#CC00FF" OnClick="btnLogin_Click" />
                  </td>
                  
              </tr>
               <tr>
                  <td colspan="2" align="center">
                      <asp:Label ID="lblRegLink" runat="server" Text="Create Account"><span><a href="reg.aspx">Create Account</a></span></asp:Label>
                  </td>
                  
              </tr>
               <tr>
                  <td colspan="2" align="center">
                      <asp:Label ID="lblLogMessage" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td colspan="2">
                      <asp:Button ID="btnAdmin" runat="server" CssClass="btn btn-danger" Text="Admin Login" OnClick="btnAdmin_Click" />
                  </td>
              </tr>
          </table>
                </asp:Panel>

            <asp:Panel ID="PanelAdmin" runat="server">


                <asp:Image ID="Image2" runat="server" ImageUrl="~/img/dinning MAnagement.jpg" Width="100%" />
            <%--<img src="../img/dinning MAnagement.jpg" class="img-responsive" alt="" />--%>
          <table align="center">
              <tr>
                  <td colspan="2" style="text-align:center; text-decoration-color:brown">
                      <h2>Admin login</h2>
                  </td>
                  
              </tr>
               <tr class="form-group">
                  <td>
                      <asp:Label ID="lblADUname" runat="server" CssClass="control-label" Text="User Name"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtAUname" CssClass="form-control focus" runat="server"></asp:TextBox>
                  </td>
              </tr>
               <tr class="form-group">
                  <td>
                      <asp:Label ID="lblAPw" runat="server" CssClass="control-label" Text="Password"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtAPword" CssClass="form-control focus" runat="server" TextMode="Password"></asp:TextBox>
                  </td>
              </tr>
               <tr>
                   <td></td>
                  <td colspan="2" align=center>
                      <asp:Button ID="btnAAA" runat="server" CssClass="btn btn-danger" OnClick="btnAAA_Click" Text="Login" />
                  </td>
                  
              </tr>
               
               <tr>
                  <td colspan="2" align="center">
                      <asp:Label ID="lblAdMess" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                  </td>
              </tr>
              <tr>
                  <td colspan="2">
                      <asp:Button ID="btnUlog" runat="server" CssClass="btn btn-danger" Text="User Login" OnClick="btnUlog_Click" />
                  </td>
              </tr>
          </table>
            </asp:Panel>
      
        </div>
        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
            
        </div>
    </div>
    </form>
</body>
</html>
