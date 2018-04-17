<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="researchDataBrowsingInformationSystem.download" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxFileManager ID="ASPxFileManager1" runat="server" CustomFileSystemProviderTypeName="CustomProvider" Height="544px">
                <Settings RootFolder="/" ThumbnailFolder="~/Thumb/" EnableMultiSelect="True" />
                <SettingsEditing AllowDownload="True" />
                <SettingsUpload Enabled="False">
                </SettingsUpload>
            </dx:ASPxFileManager>
        </div>
    </form>
</body>
</html>