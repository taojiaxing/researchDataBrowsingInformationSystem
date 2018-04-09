<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientInfo.aspx.cs" Inherits="researchDataBrowsingInformationSystem.WebForm1" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:14%">
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="Id">
                <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" ShowSelectCheckbox="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn Caption="病人ID号" FieldName="Id" ReadOnly="false" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="科研医生编号" FieldName="DoctorID" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="病人姓名" FieldName="Name" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="病人性别" FieldName="Sex" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="病人身高" FieldName="Height" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="病人体重" FieldName="Weitght" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn Caption="病人出生时间" FieldName="BirthDate" VisibleIndex="7">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn Caption="备注信息" FieldName="Remark" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [PatientInfo] WHERE [Id] = @original_Id AND [DoctorID] = @original_DoctorID AND [Name] = @original_Name AND [Sex] = @original_Sex AND [Height] = @original_Height AND [Weitght] = @original_Weitght AND [BirthDate] = @original_BirthDate AND [Remark] = @original_Remark" InsertCommand="INSERT INTO [PatientInfo] ([Id], [DoctorID], [Name], [Sex], [Height], [Weitght], [BirthDate], [Remark]) VALUES (@Id, @DoctorID, @Name, @Sex, @Height, @Weitght, @BirthDate, @Remark)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PatientInfo]" UpdateCommand="UPDATE [PatientInfo] SET [DoctorID] = @DoctorID, [Name] = @Name, [Sex] = @Sex, [Height] = @Height, [Weitght] = @Weitght, [BirthDate] = @BirthDate, [Remark] = @Remark WHERE [Id] = @original_Id AND [DoctorID] = @original_DoctorID AND [Name] = @original_Name AND [Sex] = @original_Sex AND [Height] = @original_Height AND [Weitght] = @original_Weitght AND [BirthDate] = @original_BirthDate AND [Remark] = @original_Remark">
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