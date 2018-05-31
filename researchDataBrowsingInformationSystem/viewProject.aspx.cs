using System;

namespace researchDataBrowsingInformationSystem
{
    public partial class viewProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"].ToString() == "0")
            {
                this.SqlDataSource1.SelectParameters[0].DefaultValue = "%";
            }
            this.SqlDataSource1.SelectParameters[0].DefaultValue = Session["ID"].ToString();
            //this.DropDownList2.DataBind();
        }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    String project_name = this.DropDownList1.SelectedItem.Text;
        //    Session["project_name"] = this.DropDownList1.SelectedValue;
        //    mainIfr.Attributes.Add("src", "biao.aspx");
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            String project_name = DropDownList2.SelectedValue;
            Session["project_name"] = this.DropDownList2.SelectedValue;
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