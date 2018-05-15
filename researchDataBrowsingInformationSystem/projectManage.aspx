<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projectManage.aspx.cs" Inherits="researchDataBrowsingInformationSystem.projectManage" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Settings ShowFilterRow="True" ShowGroupPanel="True" />
            <SettingsSearchPanel Visible="True" />
            <Columns>
                <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn Caption="项目ID" FieldName="ID" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="项目名" FieldName="Name" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn FieldName="Isblock" VisibleIndex="3" Caption="是否允许下载" Width="80px">
                    <EditFormSettings VisibleIndex="2" Visible="True" Caption="是否通过" />
                    <CellStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <PropertiesComboBox>
                        <Items>
                            <dx:ListEditItem Text="允许下载" Value="0" />
                            <dx:ListEditItem Text="不允许下载" Value="1" />
                        </Items>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn FieldName="IsPass" VisibleIndex="4" Caption="是否通过" Width="80px">
                    <EditFormSettings VisibleIndex="3" Visible="True" Caption="是否通过" />
                    <CellStyle HorizontalAlign="Center" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <PropertiesComboBox>
                        <Items>
                            <dx:ListEditItem Text="不通过" Value="0" />
                            <dx:ListEditItem Text="通过" Value="1" />
                        </Items>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn FieldName="Remark" Caption="备注" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>" SelectCommand="SELECT  *FROM      project" UpdateCommand="UPDATE  project SET Name = ?, Isblock = ?, IsPass = ?, Remark = ? WHERE(ID = ?)"></asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>