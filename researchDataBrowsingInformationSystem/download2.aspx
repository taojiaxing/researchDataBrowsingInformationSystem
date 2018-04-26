<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download2.aspx.cs" Inherits="researchDataBrowsingInformationSystem.download2" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxFileManager ID="ASPxFileManager1" runat="server" CustomFileSystemProviderTypeName="CustomProvider" Theme="Aqua">
                <ClientSideEvents
                    CurrentFolderChanged="function(s, e) { folder(s,e);}" />
                <Settings RootFolder="/" ThumbnailFolder="~\Thumb" EnableMultiSelect="True" />
                <SettingsFileList View="Details">
                </SettingsFileList>
                <SettingsUpload Enabled="False">
                </SettingsUpload>
            </dx:ASPxFileManager>
        </div>
        <asp:HiddenField ID="FileName" runat="server" />
    </form>
    <script type="text/javascript">
        function folder(s, e) {
            var obj = document.getElementById("FileName");
            obj.value = e.fullName;
        };
    </script>
</body>
</html>