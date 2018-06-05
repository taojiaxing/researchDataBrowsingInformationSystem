﻿using DevExpress.Web;
using System;

namespace researchDataBrowsingInformationSystem
{
    public partial class projectResearcherByID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.SqlDataSource1.SelectParameters[0].DefaultValue = Session["project_id"].ToString();
            this.ASPxGridView1.DataBind();
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