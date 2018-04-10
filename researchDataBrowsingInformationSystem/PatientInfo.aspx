<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientInfo.aspx.cs" Inherits="researchDataBrowsingInformationSystem.WebForm1" %>

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

                case "View":
                    //window.open('CheckInfo.aspx', '', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,width=750,height=470,left=80,top=40');
                    window.showModelessDialog('CheckInfo.aspx', '', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,width=750,height=470,left=80,top=40');
                    break;

                case "Button3": break;
                default:
                    e.processOnServer = true;
                    break;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 14%">
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id" OnCustomButtonCallback="ASPxGridView1_CustomButtonCallback">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <SettingsSearchPanel Visible="True" />
                <ClientSideEvents CustomButtonClick="onGrid1ButtonClick" />
                <Columns>
                    <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="8" Caption="操作">
                        <CustomButtons>
                            <dx:GridViewCommandColumnCustomButton ID="View" Text="查看">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Edit" Text="编辑">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Delete" Text="删除">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="New" Text="新建" Visibility="FilterRow">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="Sex" VisibleIndex="3" Caption="病人性别" Width="80px">
                        <EditFormSettings VisibleIndex="3" Visible="True" Caption="病人性别" />
                        <CellStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="男" Value="男" />
                                <dx:ListEditItem Text="女" Value="女" />
                            </Items>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataTextColumn Caption="病人ID号" FieldName="Id" ReadOnly="false" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="科研医生编号" FieldName="DoctorID" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="病人姓名" FieldName="Name" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <%--     <dx:GridViewDataTextColumn Caption="病人性别" FieldName="Sex" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>--%>
                    <dx:GridViewDataTextColumn Caption="病人身高" FieldName="Height" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="病人体重" FieldName="Weitght" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn Caption="病人出生时间" FieldName="BirthDate" VisibleIndex="6">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn Caption="备注信息" FieldName="Remark" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConflictDetection="CompareAllValues"
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
                DeleteCommand="DELETE FROM PatientInfo WHERE (Id =?) "
                InsertCommand="INSERT INTO PatientInfo (Id, DoctorID, Name, Sex, Height, Weitght, BirthDate, Remark) VALUES (?, ?, ?, ?, ?, ?, ?, ?)"
                OldValuesParameterFormatString="original_{0}"
                SelectCommand="SELECT * FROM patientinfo"
                UpdateCommand="UPDATE PatientInfo SET DoctorID = ?, Name = ?, Sex = ?, Height = ?, Weitght = ?, BirthDate = ?, Remark = ? WHERE (Id = ?)"
                ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_DoctorID" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Sex" Type="String" />
                    <asp:Parameter Name="original_Height" Type="Int32" />
                    <asp:Parameter Name="original_Weitght" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_BirthDate" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="DoctorID" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Sex" Type="String" />
                    <asp:Parameter Name="Height" Type="Int32" />
                    <asp:Parameter Name="Weitght" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="BirthDate" />
                    <asp:Parameter Name="Remark" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DoctorID" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Sex" Type="String" />
                    <asp:Parameter Name="Height" Type="Int32" />
                    <asp:Parameter Name="Weitght" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="BirthDate" />
                    <asp:Parameter Name="Remark" Type="String" />
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_DoctorID" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Sex" Type="String" />
                    <asp:Parameter Name="original_Height" Type="Int32" />
                    <asp:Parameter Name="original_Weitght" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="original_BirthDate" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>