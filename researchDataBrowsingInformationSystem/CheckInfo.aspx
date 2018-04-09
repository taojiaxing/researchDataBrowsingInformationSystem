<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckInfo.aspx.cs" Inherits="researchDataBrowsingInformationSystem.CheckInfo" %>

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

                case "Button2":
                    // 可以定义相关事件
                    if (someEvent) // 或者 !typeof(someEvent) === 'undefined'
                        someEvent.call();
                    //someEvent.apply(context, arguments); 可以传入指定的context

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
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id" OnCustomButtonCallback="ASPxGridView1_CustomButtonCallback">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <SettingsSearchPanel Visible="True" />
                <ClientSideEvents CustomButtonClick="onGrid1ButtonClick" />
                <Columns>
                    <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="5" Caption="操作">
                        <CustomButtons>
                            <dx:GridViewCommandColumnCustomButton ID="Edit" Text="编辑">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Delete" Text="删除">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="New" Text="新建" Visibility="FilterRow">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn Caption="病人ID号" FieldName="Id" ReadOnly="false" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="描述哪类检查" FieldName="Type" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="描述医生编号" FieldName="DoctorCheckID" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="描述信息" FieldName="Info" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="备注信息" FieldName="Remark" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM CheckInfo WHERE (Id = ?)" InsertCommand="INSERT INTO CheckInfo (Id, Type, DoctorCheckID, Info, Remark) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM CheckInfo" UpdateCommand="UPDATE CheckInfo SET Type = ?, DoctorCheckID = ?, Info = ?, Remark = ? WHERE (Id = ?)" ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_Type" Type="String" />
                    <asp:Parameter Name="original_DoctorCheckID" Type="String" />
                    <asp:Parameter Name="original_Info" Type="String" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="DoctorCheckID" Type="String" />
                    <asp:Parameter Name="Info" Type="String" />
                    <asp:Parameter Name="Remark" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="DoctorCheckID" Type="String" />
                    <asp:Parameter Name="Info" Type="String" />
                    <asp:Parameter Name="Remark" Type="String" />
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_Type" Type="String" />
                    <asp:Parameter Name="original_DoctorCheckID" Type="String" />
                    <asp:Parameter Name="original_Info" Type="String" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>