using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;

/// <summary>
/// Summary description for CustomProvider
/// </summary>
///
internal enum ElementType
{
    Directory,
    File
}

public class CustomProvider : FileSystemProviderBase
{
    private String _connectionString;
    private NetworkCredential _creds;
    public static String path;

    public CustomProvider(String folder)
        : base(folder)
    {
        var ftpUser = "";
        var ftpPass = "";
        var ftpServer = "127.0.0.1";
        var dir = path;
        _creds = new NetworkCredential();
        _connectionString = String.Format("ftp://{0}/{1}", ftpServer, dir);
    }

    public CustomProvider(String connectionString, NetworkCredential creds, String folder)
        : base(folder)
    {
        _connectionString = connectionString;
        _creds = creds;
    }

    public override bool Exists(FileManagerFile file)
    {
        return base.Exists(file);
    }

    public override bool Exists(FileManagerFolder folder)
    {
        return base.Exists(folder);
    }

    private List<String> FindElements(String fullname, ElementType type)
    {
        var result = new List<String>();
        var uri = new Uri(String.Format("{0}{1}/", _connectionString, fullname));
        var request = (FtpWebRequest)WebRequest.Create(uri);
        request.Method = WebRequestMethods.Ftp.ListDirectoryDetails;
        request.Credentials = _creds;
        request.UsePassive = false;
        request.KeepAlive = true;
        var response = (FtpWebResponse)request.GetResponse();
        var responseStream = response.GetResponseStream();
        var reader = new StreamReader(responseStream);
        var lstdirectory = reader.ReadLine();
        while (lstdirectory != null)
        {
            var dirDetails = lstdirectory.Split(new char[] { ' ' }, 9, StringSplitOptions.RemoveEmptyEntries);
            var dirFlag = dirDetails[0].Substring(0, 1);
            var filename = dirDetails[8];
            if ((type == ElementType.File && !dirFlag.Equals("d"))
                || (type == ElementType.Directory && dirFlag.Equals("d")))
            {
                result.Add(filename);
            }
            lstdirectory = reader.ReadLine();
        }
        return result;
    }

    public override IEnumerable<FileManagerFile> GetFiles(FileManagerFolder folder)
    {
        var files = FindElements(folder.FullName, ElementType.File);
        return files.Select(file => new FileManagerFile(this, file)).ToArray();
    }

    public override IEnumerable<FileManagerFolder> GetFolders(FileManagerFolder parentFolder)
    {
        var directories = FindElements(parentFolder.FullName, ElementType.Directory);
        return directories.Select(directory => new FileManagerFolder(this, directory)).ToArray();
    }
}