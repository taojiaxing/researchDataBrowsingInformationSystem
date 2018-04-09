using System;

namespace researchDataBrowsingInformationSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("default.aspx");
            }
        }
    }
}