<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckInfo.aspx.cs" Inherits="researchDataBrowsingInformationSystem.CheckInfo" %>

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
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" ShowSelectCheckbox="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn Caption="病人ID号" FieldName="Id" ReadOnly="false" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="描述哪类检查" FieldName="Type" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="描述医生编号" FieldName="DoctorCheckID" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="描述信息" FieldName="Info" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="备注信息" FieldName="Remark" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:testConnectionString2 %>" DeleteCommand="DELETE FROM [CheckInfo] WHERE [Id] = @original_Id AND [Type] = @original_Type AND [DoctorCheckID] = @original_DoctorCheckID AND [Info] = @original_Info AND [Remark] = @original_Remark" InsertCommand="INSERT INTO [CheckInfo] ([Id], [Type], [DoctorCheckID], [Info], [Remark]) VALUES (@Id, @Type, @DoctorCheckID, @Info, @Remark)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CheckInfo]" UpdateCommand="UPDATE [CheckInfo] SET [Type] = @Type, [DoctorCheckID] = @DoctorCheckID, [Info] = @Info, [Remark] = @Remark WHERE [Id] = @original_Id AND [Type] = @original_Type AND [DoctorCheckID] = @original_DoctorCheckID AND [Info] = @original_Info AND [Remark] = @original_Remark">
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