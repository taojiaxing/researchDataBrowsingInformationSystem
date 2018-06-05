using System;

namespace researchDataBrowsingInformationSystem
{
    public partial class viewProjectAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    String project_name = this.DropDownList1.SelectedItem.Text;
        //    Session["project_name"] = this.DropDownList1.SelectedValue;
        //    mainIfr.Attributes.Add("src", "biao.aspx");
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            String project_name = this.TextBox1.Text;
            Session["project_name"] = this.TextBox1.Text;
            if (Session["Role"].ToString() == "0")
            {
                mainIfr.Attributes.Add("src", "biaoAdmin.aspx");
            }
            else
            {
                mainIfr.Attributes.Add("src", "biao.aspx");
            }
        }
    }
}