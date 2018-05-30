using System;

namespace researchDataBrowsingInformationSystem
{
    public partial class addUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() != "" && TextBox2.Text.Trim() != "" && TextBox3.Text.Trim() != "")
            {
                using (testEntities db = new testEntities())
                {
                    user us = new user();
                    us.ID = TextBox1.Text.Trim();
                    us.Name = TextBox2.Text.Trim();
                    us.Psd = TextBox3.Text.Trim();
                    db.user.Add(us);
                    db.SaveChanges();
                }
            }
        }
    }
}