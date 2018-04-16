﻿using System;
using System.Data;

namespace researchDataBrowsingInformationSystem
{
    public partial class biao2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] != null)
            {
                if (Session["Role"].ToString() == "2")
                {
                    if (Session["Right"].ToString() == "4")
                    {
                        Response.Redirect("default.aspx");
                    }
                    else
                    {
                        this.SqlDataSource1.SelectParameters[0].DefaultValue = Session["UserName"].ToString();
                        this.ASPxGridView1.DataBind();
                    }
                }
                else
                {
                    this.SqlDataSource1.SelectParameters[0].DefaultValue = Session["UserName"].ToString();
                    this.ASPxGridView1.DataBind();
                }
            }
            else
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void ASPxGridView1_CustomButtonCallback(object sender, DevExpress.Web.ASPxGridViewCustomButtonCallbackEventArgs e)
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
                case "Viwe_check":
                    for (int i = 0; i < this.ASPxGridView1.VisibleRowCount; i++)
                    {
                        if (this.ASPxGridView1.Selection.IsRowSelected(i))
                        {
                            DataRowView checkinfo = (DataRowView)ASPxGridView1.GetRow(i);

                            Session["Checkid"] = checkinfo.Row.ItemArray[0];
                        }
                    }

                    break;
            }
        }
    }
}