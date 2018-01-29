using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DinningManagementProject.admin
{
    public partial class account : System.Web.UI.Page
    {
        string date= DateTime.Now.ToShortDateString();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbldate.Text = date;
            PanelDalyCost.Visible = true;
            PanelUserAcount.Visible = false;
            PanelCostView.Visible = false;
            PanelOldUser.Visible = false;
        }


        DinningManagementEntities2 db = new DinningManagementEntities2();
        tbl_dalyCost DcostObj = new tbl_dalyCost();


        protected void btnCostSave_Click(object sender, EventArgs e)
        {
            DcostObj.C_date = date.ToString();
            DcostObj.cost =Convert.ToInt32( txtCost.Text.ToString());
            DcostObj.meal = Convert.ToInt32(txtMeal.Text.ToString());

            db.AddTotbl_dalyCost(DcostObj);
            db.SaveChanges();
            Clean();
            lblMessage.Text = "Save Today Date, Cost and Meal Info";
        }

        public void Clean()
        {
            txtCost.Text = "";
            txtMeal.Text = "";
            txtTAKA.Text = "";
            txtUserID.Text = "";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            Clean();
        }

        tbl_Uaccount UaccObj = new tbl_Uaccount();

        protected void btnUserAccountSave_Click(object sender, EventArgs e)
        {
            PanelCostView.Visible = false;
            PanelDalyCost.Visible = false;
            PanelUserAcount.Visible = true;
            PanelOldUser.Visible = false;

            UaccObj.E_id = Convert.ToInt32(txtUserID.Text.ToString());
            UaccObj.account = Convert.ToInt32(txtTAKA.Text.ToString());

            db.AddTotbl_Uaccount(UaccObj);
            db.SaveChanges();
            lblUserOK.Text = " Balance... added";
            Clean();


        }

        protected void btnDaily_Click(object sender, EventArgs e)
        {
            PanelCostView.Visible = false;
            PanelDalyCost.Visible = true;
            PanelUserAcount.Visible = false;
            PanelOldUser.Visible = false;
        }

        protected void btnUser_Click(object sender, EventArgs e)
        {
            PanelCostView.Visible = false;
            PanelDalyCost.Visible = false;
            PanelUserAcount.Visible = true;
            PanelOldUser.Visible = false;
        }

        protected void btnViewCost_Click(object sender, EventArgs e)
        {
            PanelCostView.Visible = true;
            PanelDalyCost.Visible = false;
            PanelUserAcount.Visible = false;
            PanelOldUser.Visible = false;


            GridDailyCost.DataSource = db.tbl_dalyCost.ToList();
            GridDailyCost.DataBind();
        }

        protected void btnOldUserUpdate_Click(object sender, EventArgs e)
        {
            PanelCostView.Visible = false;
            PanelDalyCost.Visible = false;
            PanelUserAcount.Visible = false;
            PanelOldUser.Visible = true;


        }

        protected void btnSRC_Click(object sender, EventArgs e)
        {
            PanelCostView.Visible = false;
            PanelDalyCost.Visible = false;
            PanelUserAcount.Visible = false;
            PanelOldUser.Visible = true;

            if (txtSrcID.Text !="") { 
            int id = Convert.ToInt32(txtSrcID.Text);
            lblUid.Text = id.ToString();
            }
            else
            {
                lblLstName.Text = "no input";
            }
        }
    }
}