using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace DinningManagementProject.admin
{
    public partial class admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MealInfo();
        }
        string alluser;
        
     // DateTime stopuser= DateTime.Now.AddDays(1).ToShortTimeString();

        DinningManagementEntities2 db = new DinningManagementEntities2();
        tbl_MealInfo mealInfo = new tbl_MealInfo();
        public void MealInfo()
        {
            lblDateT.Text = DateTime.Now.AddDays(1).ToShortDateString();

            alluser = db.tbl_userInfo.Count().ToString();
            lblAllMember.Text = alluser;
            int alu = int.Parse(alluser);
            //lblMealStop.Text = Convert.ToString(stopuser);
            //int  date =int.Parse( db.SP_stopNum(stopuser));

            DateTime dt = DateTime.Now.AddDays(1);
            var nm =dt.ToShortDateString();
            int a  =db.tbl_MealInfo.Count(x=> x.m_date==nm);
            lblMealStop.Text = a.ToString();

            int sh = alu - a;
            lblMeal.Text = sh.ToString();

            //lblMealStop.Text = db.tbl_MealInfo.Count(x => x.m_date =stopuser);
            //lblMealStop.Text = db.tbl_MealInfo.Where(x => x.m_date = DateTime.Now.AddDays(1).ToShortDateString()).FirstOrDefault();
            //lblMealStop.Text= db.SP_NumberStopMeal().ToString();


            //var stop = from user in db.tbl_MealInfo
            //          where user.m_date = stopuser

            //var rw = db.ExecuteStoreCommand("DECLARE @Toda DATE = GETDATE()+1;select count(*) from tbl_MealInfo where m_date = @Toda");
            //lblMealStop.Text = rw.ToString();


            //using (var ctx = new DinningManagementEntities2())
            //{
            //    int user1 = ctx.SP_NumberStopMeal.ToList<int>();
            //    int row=
            //}

        }
    }
}