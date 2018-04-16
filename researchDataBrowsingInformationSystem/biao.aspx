<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="biao.aspx.cs" Inherits="researchDataBrowsingInformationSystem.biao" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM biao WHERE (StudyInstanceUID = ?)" InsertCommand="INSERT INTO biao (StudyInstanceUID, PatientID, PatientName, PatientSex, PatientAge, FilePath, OperatorsName, PatientBirthDate, AccessionNumber, StudyID, BodyPartExamined, StudyDate, StudyTime, Modality, StudyDescription) VALUES   (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>" SelectCommand="SELECT * FROM biao" UpdateCommand="UPDATE  biao SET PatientID = ?, PatientName = ?, PatientSex = ?, PatientAge = ?, FilePath = ?, OperatorsName = ?, PatientBirthDate = ?, AccessionNumber = ?, StudyID = ?, BodyPartExamined = ?, StudyDate = ?, StudyTime = ?, Modality = ?, StudyDescription = ? WHERE(StudyInstanceUID = ?)">
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
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="StudyInstanceUID">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewCommandColumn Caption="操作" ShowClearFilterButton="True" VisibleIndex="15">
                        <CustomButtons>
                            <dx:GridViewCommandColumnCustomButton ID="New" Text="新建" Visibility="FilterRow">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Edit" Text="编辑">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Delete" Text="删除">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="StudyInstanceUID" ReadOnly="True" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PatientID" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PatientName" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PatientSex" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PatientAge" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="FilePath" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OperatorsName" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PatientBirthDate" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="AccessionNumber" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="StudyID" VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="BodyPartExamined" VisibleIndex="10">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="StudyDate" VisibleIndex="11">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="StudyTime" VisibleIndex="12">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Modality" VisibleIndex="13">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="StudyDescription" VisibleIndex="14">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
        </div>
    </form>
</body>
</html>
