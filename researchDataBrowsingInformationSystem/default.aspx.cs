using System;
using System.Linq;

namespace researchDataBrowsingInformationSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////确保页面是第一次被访问
            //if (!Page.IsPostBack)
            //{
            //    CheckPageStatus();
            //}
        }

        //通过判断Session["UserName"]是否为空检查页面是否已登录（登录成功时会为Session["UserName"]注入值，就不空了。。否则就认为没有登录）。
        //private void CheckPageStatus()
        //{
        //    if (Session["Role"] != null)
        //    {
        //        if (Session["Role"].ToString() == "1")
        //        {
        //            pnlLogin.Visible = false;
        //            pnlWelcome.Visible = true;
        //            String name;
        //            if (Session["UserName"] == null)
        //            {
        //                name = "";
        //            }
        //            else
        //            {
        //                name = Session["UserName"].ToString();
        //            }
        //            lblWelcome.Text = "欢迎登录，" + name;
        //            btnReloinfo.Visible = true;
        //            btnPatientInfo.Visible = true;
        //        }
        //        else if (Session["Role"].ToString() == "2")
        //        {
        //            if (Session["Right"].ToString() == "4")
        //            {
        //                btnPatientInfo.Visible = false;
        //                pnlLogin.Visible = false;
        //                pnlWelcome.Visible = true;
        //                String name;
        //                if (Session["UserName"] == null)
        //                {
        //                    name = "";
        //                }
        //                else
        //                {
        //                    name = Session["UserName"].ToString();
        //                }
        //                lblWelcome.Text = "欢迎登录，" + name;
        //                btnReloinfo.Visible = false;
        //            }
        //            else
        //            {
        //                pnlLogin.Visible = false;
        //                pnlWelcome.Visible = true;
        //                String name;
        //                if (Session["UserName"] == null)
        //                {
        //                    name = "";
        //                }
        //                else
        //                {
        //                    name = Session["UserName"].ToString();
        //                }
        //                lblWelcome.Text = "欢迎登录，" + name;
        //                btnReloinfo.Visible = false;
        //                btnPatientInfo.Visible = true;
        //            }
        //        }
        //    }
        //    else
        //    {
        //        pnlWelcome.Visible = false;
        //        pnlLogin.Visible = true;
        //    }
        //}

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (testEntities db = new testEntities())
            {
                var userDetails = db.user.Where(x => x.ID == txbUserName.Text && x.Psd == txbUserPassword.Text).FirstOrDefault();
                if (userDetails != null)
                {
                    Session["ID"] = userDetails.ID;
                    Session["UserName"] = userDetails.Name;
                    Session["Message"] = "登录成功！";
                    Session["Role"] = userDetails.Role;
                    Response.Redirect("main.aspx");
                }
                else
                {
                    Session["Message"] = "登录失败。请重新登录。";
                    Response.Write("<script>alert('登录失败，请重新登录。');</script>");
                }
            }
        }

        protected void btnQuit_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Session.Remove("UserName");
                Session.Remove("Message");
                Session.Remove("Role");
                Session.Remove("Right");
                Session["Message"] = "退出成功，欢迎您再来啊";
                Response.Redirect("default.aspx");
            }
        }
    }
}