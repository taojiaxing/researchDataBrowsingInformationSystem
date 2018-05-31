using DevExpress.Web;
using System;

namespace researchDataBrowsingInformationSystem
{
    public partial class userInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["Role"] != null)
            //{
            //    if (Session["Role"].ToString() != "0")
            //    {
            //        Response.Redirect("default.aspx");
            //    }
            //}
            //else
            //{
            //    Response.Redirect("default.aspx");
            //}
        }

        protected void ASPxGridView1_CustomButtonCallback(object sender, ASPxGridViewCustomButtonCallbackEventArgs e)
        {
            String id = e.ButtonID;
            switch (id)
            {
                case "Delete":
                    this.ASPxGridView1.DeleteRow(e.VisibleIndex);
                    break;

                case "Edit":
                    this.ASPxGridView1.StartEdit(e.VisibleIndex);
                    break;

                case "New":
                    this.ASPxGridView1.AddNewRow();
                    break;
            }
        }
    }
}