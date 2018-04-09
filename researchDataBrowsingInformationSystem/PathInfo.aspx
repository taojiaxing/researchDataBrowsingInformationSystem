<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PathInfo.aspx.cs" Inherits="researchDataBrowsingInformationSystem.PathInfo" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <div position="absolute" top="10%" left=" 20%">
        <form id="form1" runat="server">
            <div>
            </div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" ShowSelectCheckbox="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn Caption="病人ID号" FieldName="Id" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="病人检查编号" FieldName="StuID" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="检查的项目" FieldName="Progect" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="检查结果存放路径" FieldName="Path" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn Caption="检查时间" FieldName="Date" VisibleIndex="5">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn Caption="备注信息" FieldName="Remark" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [PathInfo] WHERE [Id] = @original_Id AND [StuID] = @original_StuID AND [Progect] = @original_Progect AND [Path] = @original_Path AND [Date] = @original_Date AND [Remark] = @original_Remark" InsertCommand="INSERT INTO [PathInfo] ([Id], [StuID], [Progect], [Path], [Date], [Remark]) VALUES (@Id, @StuID, @Progect, @Path, @Date, @Remark)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PathInfo]" UpdateCommand="UPDATE [PathInfo] SET [StuID] = @StuID, [Progect] = @Progect, [Path] = @Path, [Date] = @Date, [Remark] = @Remark WHERE [Id] = @original_Id AND [StuID] = @original_StuID AND [Progect] = @original_Progect AND [Path] = @original_Path AND [Date] = @original_Date AND [Remark] = @original_Remark">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_StuID" Type="String" />
                    <asp:Parameter Name="original_Progect" Type="String" />
                    <asp:Parameter Name="original_Path" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Date" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="StuID" Type="String" />
                    <asp:Parameter Name="Progect" Type="String" />
                    <asp:Parameter Name="Path" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="Remark" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StuID" Type="String" />
                    <asp:Parameter Name="Progect" Type="String" />
                    <asp:Parameter Name="Path" Type="String" />
                    <asp:Parameter DbType="Date" Name="Date" />
                    <asp:Parameter Name="Remark" Type="String" />
                    <asp:Parameter Name="original_Id" Type="String" />
                    <asp:Parameter Name="original_StuID" Type="String" />
                    <asp:Parameter Name="original_Progect" Type="String" />
                    <asp:Parameter Name="original_Path" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_Date" />
                    <asp:Parameter Name="original_Remark" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
    </div>
</body>
</html>