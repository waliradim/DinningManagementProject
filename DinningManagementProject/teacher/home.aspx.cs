using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;


namespace DinningManagementProject.teacher
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUname.Text = Session["Uname"].ToString();
            lblTime.Text = DateTime.Now.AddDays(1).ToShortDateString();
            //lblmess.Visible = false;
            
        }
        DinningManagementEntities2 dbEntity = new DinningManagementEntities2();
        tbl_MealInfo meal = new tbl_MealInfo();
        protected void btnMilStop_Click(object sender, EventArgs e)
        {
            meal.E_id = Convert.ToInt32(Session["Eid"]);
            meal.m_date = Convert.ToString( DateTime.Now.AddDays(1).ToShortDateString());
            meal.meal = Convert.ToInt32(0);

            dbEntity.AddTotbl_MealInfo(meal);
            dbEntity.SaveChanges();

            lblmess.Text = "Success full Stop Your Tomorrow Meal";

            //if (meal != null)
            //{
            //    lblmess.Text = "Success full Stop Your Tomorrow Meal";
            //}
            //else
            //{
            //    lblmess.Text = "Sorry Action Fail";
            //}

        }

        protected void btnLogut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/teacher/login.aspx");
        }
    }
}