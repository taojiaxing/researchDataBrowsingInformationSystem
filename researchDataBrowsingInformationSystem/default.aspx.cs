using System;
using System.Linq;
using System.Web.UI;

namespace researchDataBrowsingInformationSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //确保页面是第一次被访问
            if (!Page.IsPostBack)
            {
                CheckPageStatus();
            }
        }

        //通过判断Session["UserName"]是否为空检查页面是否已登录（登录成功时会为Session["UserName"]注入值，就不空了。。否则就认为没有登录）。
        private void CheckPageStatus()
        {
            if (Session["UserName"] != null)
            {
                pnlLogin.Visible = false;
                pnlWelcome.Visible = true;
                lblWelcome.Text = "欢迎登录，" + Session["UserName"].ToString();
            }
            else
            {
                pnlWelcome.Visible = false;
                pnlLogin.Visible = true;
            }
            ////这个用来接收登录或退出后的信息。个人习惯，你也可以不这么做。
            //if (Session["Message"] != null)
            //{
            //    lblMessage.Text = Session["Message"].ToString();
            //    Session.Remove("Message");
            //}
            //else
            //    lblMessage.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (DataEntities db = new DataEntities())
            {
                var userDetails = db.roleinfoes.Where(x => x.Name == txbUserName.Text && x.Psd == txbUserPassword.Text).FirstOrDefault();
                if (userDetails != null)
                {
                    Session["UserName"] = userDetails.Name;
                    Session["Message"] = "登录成功！";
                    Session["Role"] = userDetails.Role;
                    Session["Right"] = userDetails.Right;
                    Response.Redirect("default.aspx");
                }
                else
                {
                    Session["Message"] = "登录失败。请重新登录。";
                    Response.Redirect("default.aspx");
                }
            }
        }

        protected void btnQuit_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Session.Remove("UserName");
                Session["Message"] = "退出成功，欢迎您再来啊";
                Response.Redirect("default.aspx");
            }
        }

        protected void Reloinfo_Click(object sender, EventArgs e)
        {
            if (Session["Role"].ToString() == "1")
            {
                mainIfr.Attributes.Add("src", "reloInfo.aspx");
            }
        }

        protected void PatientInfo_Click(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                mainIfr.Attributes.Add("src", "PatientInfo.aspx");
            }
        }
    }
}