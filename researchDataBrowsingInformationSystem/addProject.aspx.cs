using System;
using System.Linq;

namespace researchDataBrowsingInformationSystem
{
    public partial class addProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (testEntities db = new testEntities())
            {
                var userDetails = db.user.Where(x => x.ID == DropDownList1.Text).FirstOrDefault();
                if (userDetails.Role.ToString() != "1")
                {
                    userDetails.ID = userDetails.ID;
                    userDetails.Name = userDetails.Name;
                    userDetails.Psd = userDetails.Psd;
                    userDetails.Role = 1;
                    userDetails.Remark = userDetails.Remark;
                    db.SaveChanges();
                }
                project pj = new project();
                pj.Name = TextBox2.Text.Trim();
                pj.ID = TextBox1.Text.Trim();
                db.project.Add(pj);
                db.SaveChanges();
                project_manager pg = new project_manager();
                pg.project_id = TextBox1.Text.Trim();
                pg.Use_id = DropDownList1.Text;
                db.project_manager.Add(pg);
                db.SaveChanges();
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}