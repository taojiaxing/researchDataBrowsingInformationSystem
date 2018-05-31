using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace researchDataBrowsingInformationSystem
{
    public partial class addResearcher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters[0].DefaultValue = Session["ID"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (testEntities db = new testEntities())
            {
                project_researcher pr = new project_researcher();
                pr.project_id = this.DropDownList2.SelectedValue;
                pr.User_id = this.DropDownList1.SelectedValue;
                db.project_researcher.Add(pr);
                db.SaveChanges();
            }
        }
    }
}