<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="DinningManagementProject.teacher.reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title></title>
    <link href="../style/bootstarp/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../style/bootstarp/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <div class="col-xs-12 col-sm-2 col-lg-2 col-md-2">
        
    </div>

     <div class="col-xs-12 col-sm-8 col-lg-8 col-md-8" style="background-color:#e9e78c;">
          <asp:Image ID="Image1" runat="server" ImageUrl="~/img/dinning MAnagement.jpg" Width="100%" />
          <table style="align:center; margin-top:100px; margin-left:200px">
              <tr class="form-group">
                 <td><asp:Label ID="lblFname" runat="server" Text="First Name" ValidateRequestMode="Disabled"></asp:Label> </td>
                 <td> <asp:TextBox ID="txtFname" runat="server" CssClass="form-control focus"></asp:TextBox></td>
                    <td> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFname" ErrorMessage="Please Fillup"></asp:RequiredFieldValidator>
                  </td>
             </tr>
              
              <tr class="form-group">
                 <td><asp:Label ID="lblLname" runat="server" Text="Last Name"></asp:Label> </td>
                 <td> <asp:TextBox ID="txtLname" runat="server" CssClass="form-control focus"></asp:TextBox></td>
                <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLname" ErrorMessage="Please Fillup"></asp:RequiredFieldValidator>
                  </td>
             </tr>
              <tr class="form-group">
                 <td><asp:Label ID="lbldes" runat="server" Text="Designation"></asp:Label> </td>
                 <td> <asp:TextBox ID="txtDeg" runat="server" CssClass="form-control focus"></asp:TextBox></td>
              <td> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDeg" ErrorMessage="Please Fillup"></asp:RequiredFieldValidator>
                  </td>
             </tr>
              <tr class="form-group">
                 <td><asp:Label ID="lblUname" runat="server" Text="User Name"></asp:Label> </td>
                 <td> <asp:TextBox ID="txtUname" runat="server" CssClass="form-control focus"></asp:TextBox></td>
                 <td> 
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" ErrorMessage="Please Fillup"></asp:RequiredFieldValidator>
                  </td>
             </tr>
              <tr class="form-group">
                 <td><asp:Label ID="lblPword" runat="server" Text="Password"></asp:Label> </td>
                 <td> <asp:TextBox ID="txtPWord" runat="server" CssClass="form-control focus" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password must be 6 to 20 chars long" ControlToValidate="txtPWord" ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$"></asp:RegularExpressionValidator></td>
             </tr>
              <tr>
                 <td colspan="2" align="center"><asp:Button ID="btnSubmitProfile" runat="server" Text="Save" CssClass="btn btn-danger" OnClick="btnSubmitProfile_Click" />  </td>
                 <td>
                     <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-default" OnClick="btnReset_Click" /> 
                     <asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
                  </td>
             </tr>
         </table>
    </div>

     <div class="col-xs-12 col-sm-2 col-lg-2 col-md-2">

    </div>
            </div>
    </form>
</body>
</html>
