using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DinningManagementProject.teacher
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblid.Text = Session["Eid"].ToString();
            lbluN.Text= Session["Uname"].ToString();
            UserInfo();
        }

        DinningManagementEntities2 dbEntity = new DinningManagementEntities2();
        tbl_userInfo Info;

        

        

        public void UserInfo()
        {
             Info = dbEntity.tbl_userInfo.ToList().Where(x=>x.E_id ==Convert.ToInt32(Session["Eid"].ToString())).FirstOrDefault();
            txtFname.Text = Info.fname;
            txtLname.Text = Info.lname;
            txtDeg.Text = Info.designation;
            txtUname.Text = Info.username;
            txtPWord.Text = Info.password;

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Info = dbEntity.tbl_userInfo.ToList().Where(x => x.E_id == Convert.ToInt32(Session["Eid"].ToString())).FirstOrDefault();
            Info.fname = txtFname.Text;
            Info.lname = txtLname.Text;
            Info.designation = txtDeg.Text;
            Info.password = txtPWord.Text;
            dbEntity.AddTotbl_userInfo(Info);
            dbEntity.SaveChanges();
        }

        protected void btnLogut_Click(object sender, EventArgs e)
        {

            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/teacher/login.aspx");
        }
    }
}