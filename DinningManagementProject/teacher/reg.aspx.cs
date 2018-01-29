using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DinningManagementProject;


namespace DinningManagementProject.teacher
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitProfile_Click(object sender, EventArgs e)
        {
            DinningManagementEntities2 db = new DinningManagementEntities2();
            tbl_userInfo ufoObj = new tbl_userInfo();

            ufoObj.fname = txtFname.Text.ToString();
            ufoObj.lname = txtLname.Text.ToString();
            ufoObj.designation = txtDeg.Text.ToString();
            ufoObj.username = txtUname.Text.ToString();
            ufoObj.password = txtPWord.Text.ToString();

            db.AddTotbl_userInfo(ufoObj);
        
            db.SaveChanges();
            clean();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtFname.Text = "";
            txtLname.Text = "";
            txtDeg.Text = "";
            txtPWord.Text = "";
            txtUname.Text = "";
        }

        public void clean()
        {
            txtFname.Text = "";
            txtLname.Text = "";
            txtDeg.Text = "";
            txtPWord.Text = "";
            txtUname.Text = "";
            lblmessage.Text = "Success full...";
            Response.Redirect("~/teacher/login.aspx");
        }
    }
}