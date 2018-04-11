using DevExpress.Web;
using System;
using System.Data;

namespace researchDataBrowsingInformationSystem
{
    public partial class PathInfo : System.Web.UI.Page
    {
        public static String Urls;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("default.aspx");
             }
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
                case "Basic":
                    for(int i = 0; i < this.ASPxGridView1.VisibleRowCount; i++)
                    {
                        if (this.ASPxGridView1.Selection.IsRowSelected(i))
                        {
                            DataRowView patientinfo = (DataRowView)ASPxGridView1.GetRow(i);

                            Urls = "CheckInfo.aspx?Id=" + patientinfo.Row.ItemArray[0];
                        }
                    }
                    break;
            }
        }
        public static String Urlss()
        {
            return Urls;
        }
    }
}