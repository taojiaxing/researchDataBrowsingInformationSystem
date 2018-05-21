using System;

namespace researchDataBrowsingInformationSystem
{
    public partial class viewProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String project_name = this.DropDownList1.Text;
            String wayToselect = this.DropDownList2.Text;
            switch (wayToselect)
            {
                case "date":
                    mainIfr.Attributes.Add("src", "biaobydate.aspx");
                    break;

                case "describe":

                    break;

                case "ID":
                    break;

                case "OperatorsName":
                    break;

                default:
                    break;
            }
        }
    }
}