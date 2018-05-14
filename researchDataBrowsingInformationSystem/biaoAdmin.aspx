<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="biaoAdmin.aspx.cs" Inherits="researchDataBrowsingInformationSystem.biaoAdmin" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script language="javascript">
        function onGrid1ButtonClick(s, e) {

            switch (e.buttonID) {
                case "Delete":
                    // 用于操作前确认
                    if (confirm("确定要执行这个操作么？"))
                        e.processOnServer = true;
                    break;
                default:
                    e.processOnServer = true;
                    break;
            }
        }
        function Viwe_checkClick() {
            var url = 'CheckInfo.aspx';
            ASPxPopupControl1.SetContentUrl(url);
            ASPxPopupControl1.Show();
        }
        function DownloadClick() {
            var url = 'download.aspx';
            ASPxPopupControl2.SetContentUrl(url);
            ASPxPopupControl2.Show();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConflictDetection="CompareAllValues"
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
                DeleteCommand="DELETE FROM biao WHERE (StudyInstanceUID = ?)"
                InsertCommand="INSERT INTO biao (StudyInstanceUID, PatientID, PatientName, PatientSex, PatientAge, FilePath,
                OperatorsName, PatientBirthDate, AccessionNumber, StudyID, BodyPartExamined, StudyDate, StudyTime, Modality, StudyDescription)
                VALUES   (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
                OldValuesParameterFormatString="original_{0}"
                ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>"
                SelectCommand="SELECT * FROM biao"
                UpdateCommand="UPDATE  biao SET PatientID = ?, PatientName = ?, PatientSex = ?, PatientAge = ?,
                FilePath = ?, OperatorsName = ?, PatientBirthDate = ?, AccessionNumber = ?, StudyID = ?, BodyPartExamined = ?,
                StudyDate = ?, StudyTime = ?, Modality = ?, StudyDescription = ? WHERE(StudyInstanceUID = ?)">
                <DeleteParameters>
                    <asp:Parameter Name="original_StudyInstanceUID" Type="String" />
                    <asp:Parameter Name="original_PatientID" Type="String" />
                    <asp:Parameter Name="original_PatientName" Type="String" />
                    <asp:Parameter Name="original_PatientSex" Type="String" />
                    <asp:Parameter Name="original_PatientAge" Type="String" />
                    <asp:Parameter Name="original_FilePath" Type="String" />
                    <asp:Parameter Name="original_OperatorsName" Type="String" />
                    <asp:Parameter Name="original_PatientBirthDate" Type="String" />
                    <asp:Parameter Name="original_AccessionNumber" Type="String" />
                    <asp:Parameter Name="original_StudyID" Type="String" />
                    <asp:Parameter Name="original_BodyPartExamined" Type="String" />
                    <asp:Parameter Name="original_StudyDate" Type="String" />
                    <asp:Parameter Name="original_StudyTime" Type="String" />
                    <asp:Parameter Name="original_Modality" Type="String" />
                    <asp:Parameter Name="original_StudyDescription" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="StudyInstanceUID" Type="String" />
                    <asp:Parameter Name="PatientID" Type="String" />
                    <asp:Parameter Name="PatientName" Type="String" />
                    <asp:Parameter Name="PatientSex" Type="String" />
                    <asp:Parameter Name="PatientAge" Type="String" />
                    <asp:Parameter Name="FilePath" Type="String" />
                    <asp:Parameter Name="OperatorsName" Type="String" />
                    <asp:Parameter Name="PatientBirthDate" Type="String" />
                    <asp:Parameter Name="AccessionNumber" Type="String" />
                    <asp:Parameter Name="StudyID" Type="String" />
                    <asp:Parameter Name="BodyPartExamined" Type="String" />
                    <asp:Parameter Name="StudyDate" Type="String" />
                    <asp:Parameter Name="StudyTime" Type="String" />
                    <asp:Parameter Name="Modality" Type="String" />
                    <asp:Parameter Name="StudyDescription" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PatientID" Type="String" />
                    <asp:Parameter Name="PatientName" Type="String" />
                    <asp:Parameter Name="PatientSex" Type="String" />
                    <asp:Parameter Name="PatientAge" Type="String" />
                    <asp:Parameter Name="FilePath" Type="String" />
                    <asp:Parameter Name="OperatorsName" Type="String" />
                    <asp:Parameter Name="PatientBirthDate" Type="String" />
                    <asp:Parameter Name="AccessionNumber" Type="String" />
                    <asp:Parameter Name="StudyID" Type="String" />
                    <asp:Parameter Name="BodyPartExamined" Type="String" />
                    <asp:Parameter Name="StudyDate" Type="String" />
                    <asp:Parameter Name="StudyTime" Type="String" />
                    <asp:Parameter Name="Modality" Type="String" />
                    <asp:Parameter Name="StudyDescription" Type="String" />
                    <asp:Parameter Name="original_StudyInstanceUID" Type="String" />
                    <asp:Parameter Name="original_PatientID" Type="String" />
                    <asp:Parameter Name="original_PatientName" Type="String" />
                    <asp:Parameter Name="original_PatientSex" Type="String" />
                    <asp:Parameter Name="original_PatientAge" Type="String" />
                    <asp:Parameter Name="original_FilePath" Type="String" />
                    <asp:Parameter Name="original_OperatorsName" Type="String" />
                    <asp:Parameter Name="original_PatientBirthDate" Type="String" />
                    <asp:Parameter Name="original_AccessionNumber" Type="String" />
                    <asp:Parameter Name="original_StudyID" Type="String" />
                    <asp:Parameter Name="original_BodyPartExamined" Type="String" />
                    <asp:Parameter Name="original_StudyDate" Type="String" />
                    <asp:Parameter Name="original_StudyTime" Type="String" />
                    <asp:Parameter Name="original_Modality" Type="String" />
                    <asp:Parameter Name="original_StudyDescription" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Button ID="Viwe_check" runat="server" OnClick="Viwe_check_Click" OnClientClick="Viwe_checkClick()" Text="查看检查结果" type="button" />
                    <asp:Button ID="Download" runat="server" OnClick="Download_Click" OnClientClick="DownloadClick()" Text="查看扫描结果" />
                </ContentTemplate>
            </asp:UpdatePanel>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                KeyFieldName="StudyInstanceUID" OnCustomButtonCallback="ASPxGridView1_CustomButtonCallback" Theme="Default">
                <SettingsPager NumericButtonCount="8" PageSize="8">
                </SettingsPager>
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <ClientSideEvents CustomButtonClick="onGrid1ButtonClick" />
                <SettingsBehavior AllowSelectByRowClick="True" />
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewCommandColumn Caption="操作" ShowClearFilterButton="True" VisibleIndex="16">
                        <CustomButtons>
                            <dx:GridViewCommandColumnCustomButton ID="New" Text="新建" Visibility="FilterRow">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Edit" Text="编辑">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Delete" Text="删除">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="StudyInstanceUID" ReadOnly="True" VisibleIndex="1" Width="80px" Caption="StudyInstanceUID">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PatientID" VisibleIndex="2" Width="6px" Caption="PatientID">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PatientName" VisibleIndex="3" Width="10px" Caption="PatientName">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PatientSex" VisibleIndex="4" Width="3px" Caption="Patient Sex">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PatientAge" VisibleIndex="5" Width="3px" Caption="Patient Age">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="FilePath" VisibleIndex="6" Width="200px" Caption="File Path">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OperatorsName" VisibleIndex="7" Width="8px" Caption="Operators Name">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PatientBirthDate" VisibleIndex="8" Width="5px" Caption="Patient Birth Date">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="AccessionNumber" VisibleIndex="9" Width="5px" Caption="Accession Number">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="StudyID" VisibleIndex="10" Width="5px" Caption="Study ID">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="BodyPartExamined" VisibleIndex="11" Width="5px" Caption="Body Part Examined">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="StudyDate" VisibleIndex="12" Width="5px" Caption="Study Date">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="StudyTime" VisibleIndex="13" Width="5px" Caption="Study Time">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Modality" VisibleIndex="14" Width="5px" Caption="Modality">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="StudyDescription" VisibleIndex="15" Width="10px" Caption="Study Description">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
        </div>
        <dx:ASPxPopupControl
            ID="ASPxPopupControl1"
            runat="server"
            AllowDragging="True"
            CloseAction="OuterMouseClick"
            EnableViewState="False"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalOffset="40"
            ShowFooter="True"
            Width="1000px"
            Height="400px"
            FooterText="欢迎使用科研数据浏览信息系统"
            HeaderText="查看系统应用详细信息，可窗口拖动并调整尺寸大小哦！"
            ClientInstanceName="ASPxPopupControl1"
            PopupAnimationType="Fade"
            Modal="True"
            ShowOnPageLoad="false"
            AllowResize="True">

            <ContentCollection>

                <dx:PopupControlContentControl
                    ID="PopupControlContentControl1"
                    runat="server"
                    SupportsDisabledAttribute="True">
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
        <dx:ASPxPopupControl
            ID="ASPxPopupControl2"
            runat="server"
            AllowDragging="True"
            CloseAction="OuterMouseClick"
            EnableViewState="False"
            PopupHorizontalAlign="WindowCenter"
            PopupVerticalOffset="40"
            ShowFooter="True"
            Width="1200px"
            Height="640px"
            FooterText="欢迎使用科研数据浏览信息系统"
            HeaderText="查看系统应用详细信息，可窗口拖动并调整尺寸大小哦！"
            ClientInstanceName="ASPxPopupControl2"
            PopupAnimationType="Fade"
            Modal="True"
            ShowOnPageLoad="false"
            AllowResize="True">

            <ContentCollection>

                <dx:PopupControlContentControl
                    ID="PopupControlContentControl2"
                    runat="server"
                    SupportsDisabledAttribute="True">
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
    </form>
</body>
</html>