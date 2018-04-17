using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace researchDataBrowsingInformationSystem
{
    public partial class download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            check();

        }
        public void check()
        {
            if (Session["path"] == null)
            {
               Response.Redirect("main.aspx");
            }
            else if (Session["path"] != null)
            {
                CustomProvider.path = Session["path"].ToString();
                //Session.Remove("path");
            }
        }
    }
}