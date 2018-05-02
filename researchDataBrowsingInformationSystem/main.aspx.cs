using System;
using System.Linq;
using System.Web.UI;

namespace researchDataBrowsingInformationSystem
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] != null)
            {
                if (Session["Role"].ToString() == "1")
                {
                    mainIfr.Attributes.Add("src", "biaoAdmin.aspx");
                }
                else if (Session["Role"].ToString() == "2")
                {
                    if (Session["Right"].ToString() == "4") {}
                    else
                    {
                        mainIfr.Attributes.Add("src", "biao.aspx");
                    }
                }
            }
            //确保页面是第一次被访问
            if (!Page.IsPostBack)
            {
                CheckPageStatus();
            }
        }

        //通过判断Session["UserName"]是否为空检查页面是否已登录（登录成功时会为Session["UserName"]注入值，就不空了。。否则就认为没有登录）。
        private void CheckPageStatus()
        {
            if (Session["Role"] != null)
            {
                if (Session["Role"].ToString() == "1")
                {
                    pnlLogin.Visible = false;
                    pnlWelcome.Visible = true;
                    String name;
                    if (Session["UserName"] == null)
                    {
                        name = "";
                    }
                    else
                    {
                        name = Session["UserName"].ToString();
                    }
                    lblWelcome.Text = "欢迎登录，" + name;
                    btnReloinfo.Visible = true;
                    btnPatientInfo.Visible = true;
                }
                else if (Session["Role"].ToString() == "2")
                {
                    if (Session["Right"].ToString() == "4")
                    {
                        btnPatientInfo.Visible = false;
                        pnlLogin.Visible = false;
                        pnlWelcome.Visible = true;
                        String name;
                        if (Session["UserName"] == null)
                        {
                            name = "";
                        }
                        else
                        {
                            name = Session["UserName"].ToString();
                        }
                        lblWelcome.Text = "欢迎登录，" + name;
                        btnReloinfo.Visible = false;
                    }
                    else
                    {
                        pnlLogin.Visible = false;
                        pnlWelcome.Visible = true;
                        String name;
                        if (Session["UserName"] == null)
                        {
                            name = "";
                        }
                        else
                        {
                            name = Session["UserName"].ToString();
                        }
                        lblWelcome.Text = "欢迎登录，" + name;
                        btnReloinfo.Visible = false;
                        btnPatientInfo.Visible = true;
                    }
                }
            }
            else
            {
                Response.Redirect("default.aspx");
                pnlWelcome.Visible = false;
                pnlLogin.Visible = true;
            }
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
                Session.Remove("Message");
                Session.Remove("Role");
                Session.Remove("Right");
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
            if (Session["Role"].ToString() == "1")
            {
                mainIfr.Attributes.Add("src", "biaoAdmin.aspx");
            }
            else if (Session["Role"].ToString() == "2")
            {
                mainIfr.Attributes.Add("src", "biao.aspx");
            }
        }
    }
}