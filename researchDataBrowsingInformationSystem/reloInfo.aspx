<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reloInfo.aspx.cs" Inherits="researchDataBrowsingInformationSystem.reloInfo" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Xpo.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Xpo" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script language=javascript>
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
    <div style="margin-left: 21%">
        <form id="form1" runat="server">
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="SqlDataSource1" KeyFieldName="Id" Theme="Default" AutoGenerateColumns="False" OnCustomButtonCallback="ASPxGridView1_CustomButtonCallback">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <SettingsSearchPanel Visible="True" />
                <ClientSideEvents CustomButtonClick="onGrid1ButtonClick" />
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="6" Caption="操作" ButtonRenderMode="Button">
                        <CustomButtons>
                            <dx:GridViewCommandColumnCustomButton ID="Edit" Text="编辑">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="Delete" Text="删除">
                            </dx:GridViewCommandColumnCustomButton>
                            <dx:GridViewCommandColumnCustomButton ID="New" Text="新建" Visibility="FilterRow">
                            </dx:GridViewCommandColumnCustomButton>
                        </CustomButtons>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="Role" VisibleIndex="3" Caption="用户角色" Width="80px">
                        <EditFormSettings VisibleIndex="4" Visible="True" Caption="用户角色" />
                        <CellStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="1" Value="1" />
                                <dx:ListEditItem Text="2" Value="2" />
                            </Items>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="Right" VisibleIndex="4" Caption="用户权限" Width="80px">
                        <EditFormSettings VisibleIndex="4" Visible="True" Caption="用户角色" />
                        <CellStyle HorizontalAlign="Center" />
                        <HeaderStyle HorizontalAlign="Center" />
                        <PropertiesComboBox>
                            <Items>
                                <dx:ListEditItem Text="1" Value="1" />
                                <dx:ListEditItem Text="2" Value="2" />
                                <dx:ListEditItem Text="3" Value="3" />
                            </Items>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataTextColumn Caption="用户ID号" FieldName="Id" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="用户姓名" FieldName="Name" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="用户密码" FieldName="Psd" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="备注信息" FieldName="Remark" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
                DeleteCommand="DELETE FROM roleinfo WHERE (Id = ?)"
                InsertCommand="INSERT INTO roleinfo(Id, Name, Psd, Role, `Right`, Remark) VALUES (?, ?, ?, ?, ?, ?)"
                ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>"
                SelectCommand="SELECT * FROM roleinfo"
                UpdateCommand="UPDATE roleinfo SET Id = ?, Name = ?, Psd = ?, Role = ?, `Right` = ?, Remark = ? WHERE (Id = ?)">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Psd" Type="String" />
                    <asp:Parameter Name="Role" Type="Int32" />
                    <asp:Parameter Name="Right" Type="Int32" />
                    <asp:Parameter Name="Remark" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Psd" Type="String" />
                    <asp:Parameter Name="Role" Type="Int32" />
                    <asp:Parameter Name="Right" Type="Int32" />
                    <asp:Parameter Name="Remark" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Psd" Type="String" />
                    <asp:Parameter Name="Role" Type="Int32" />
                    <asp:Parameter Name="Right" Type="Int32" />
                    <asp:Parameter Name="Remark" Type="String" />
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Psd" Type="String" />
                    <asp:Parameter Name="original_Role" Type="Int32" />
                    <asp:Parameter Name="original_Right" Type="Int32" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
    </div>
</body>
</html>