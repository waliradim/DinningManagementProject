using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DinningManagementProject.teacher
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblLogMessage.Visible = false;
            lblAdMess.Visible = false;
            PanelAdmin.Visible = false;

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            PanelAdmin.Visible = false;
            DinningManagementEntities2 dbEntities = new DinningManagementEntities2();
            var login = dbEntities.tbl_userInfo.Where(x => x.username == txtLogUname.Text && x.password == txtLogPword.Text).FirstOrDefault();
           
            if (login !=null)
            {
                string Uname = login.username.ToString();
                Session["Uname"] = Uname;
                int Eid = Convert.ToInt32(login.E_id);
                Session["Eid"] = Eid;

                Response.Redirect("~/teacher/home.aspx");

            }
            else
            {
                lblLogMessage.Visible = true;
                txtLogUname.Text = "";
                txtLogPword.Text = "";
                lblLogMessage.Text = "Incorrect User Name or Password";
            }
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            lblAdMess.Visible = false;
            PanelUser.Visible = false;
            PanelAdmin.Visible = true;
            
        }

        protected void btnUlog_Click(object sender, EventArgs e)
        {
            PanelAdmin.Visible = false;
            PanelUser.Visible = true;
        }

        protected void btnAAA_Click(object sender, EventArgs e)
        {
            string aun = "admin";
            string aup = "admin";
            string u = txtAUname.Text.ToString();
            string p = txtAPword.Text.ToString();

            if (u == aun && p == aup)
            {
                Response.Redirect("~/admin/admin.aspx");
            }
            else
            {

                lblAdMess.Text = "Admin User or Password may be wrong...";
            }

        }
    }
}