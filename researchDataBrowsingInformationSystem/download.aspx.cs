using Microsoft.Win32;
using System;
using System.Diagnostics;
using System.IO;

namespace researchDataBrowsingInformationSystem
{
    public partial class download : System.Web.UI.Page
    {
        private string _ftpIP = "127.0.0.1";
        private string _dir = "";
        private string _defalutDir = @"H:\MRI_Data\";

        protected void Page_Load(object sender, EventArgs e)
        {
            CustomProvider.Dir = _dir;
            CustomProvider.FtpIP = _ftpIP;
            check();
        }

        /// <summary>
        /// 下载文件夹
        /// </summary>
        /// <param name="downloadDirectoryPath"></param>
        public void DownloadDirectory(string downloadDirectoryPath)
        {
            string zipFileName = downloadDirectoryPath + ".zip";
            CompressDirectory(downloadDirectoryPath, zipFileName);
            try
            {
                DownloadFile(zipFileName);
            }
            catch
            {
                Response.Write("alert('下载失败')");
                if (File.Exists(zipFileName))
                {
                    try
                    {
                        File.Delete(zipFileName);
                    }
                    catch
                    {
                        Response.Write("alert('删除临时文件失败')");
                    }
                }
            }
        }

        /// <summary>
        /// 下载文件
        /// </summary>
        /// <param name="filePath"></param>
        public void DownloadFile(string filePath)
        {
            FileInfo fileInfo = new FileInfo(filePath);
            Response.Clear();
            Response.ContentEncoding = System.Text.Encoding.GetEncoding("UTF-8");
            Response.AddHeader("Content-Disposition", "attachment; filename=" + Server.UrlEncode(fileInfo.Name.ToString()));
            Response.AddHeader("Content-Length", fileInfo.Length.ToString());
            Response.ContentType = "application/octet-stream";
            FileStream fs = File.OpenRead(filePath);
            byte[] buffer = new byte[102400];
            int i = fs.Read(buffer, 0, buffer.Length);
            while (i > 0)
            {
                Response.BinaryWrite(buffer);
                i = fs.Read(buffer, 0, buffer.Length);
            }
            fs.Close();
            Response.End();
        }

        /// <summary>
        /// 压缩文件
        /// </summary>
        /// <param name="downloadDirectoryPath"></param>
        /// <param name="zipFileName"></param>
        public void CompressDirectory(string downloadDirectoryPath, string zipFileName)
        {
            try
            {
                var reg = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\HaoZipC.exe\");
                var exe = reg.GetValue("").ToString();
                reg.Close();
                var command = string.Format("a -tzip {0} {1}", zipFileName, downloadDirectoryPath);
                var zipProcess = new Process();
                zipProcess.StartInfo.FileName = exe;
                zipProcess.StartInfo.Arguments = command;
                zipProcess.StartInfo.WindowStyle = ProcessWindowStyle.Hidden;
                zipProcess.StartInfo.WorkingDirectory = downloadDirectoryPath;
                zipProcess.Start();
                zipProcess.WaitForExit();
                zipProcess.Close();
            }
            catch
            {
                throw new Exception("文件压缩失败");
            }
        }

        protected void DownloadDirBtn_Click(object sender, EventArgs e)
        {
            string path = _defalutDir + Session["path"].ToString() + FileName.Value;
            if (FileName.Value == "")
            {
                path = path.Substring(0, path.Length - 1);
            }
            DownloadDirectory(path);
        }

        public void check()
        {
            if (Session["path"] == null)
            {
                Response.Write("路径读取失败，请刷新后再试！");
                this.ASPxFileManager1.Visible = false;
            }
            else if (Session["path"] != null)
            {
                CustomProvider.Dir = Session["path"].ToString();
                //Session.Remove("path");
                if (Session["Right"].ToString() == "1" || Session["Role"].ToString() == "1")
                {
                    this.DownloadDirBtn.Visible = true;
                }
            }
        }
    }
}