<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="projectManager.aspx.cs" Inherits="researchDataBrowsingInformationSystem.projectManager" %>

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
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <dx:GridViewDataTextColumn Caption="序号" FieldName="ID" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="项目ID" FieldName="project_id" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="负责人ID" FieldName="User_id" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="权限" FieldName="Right" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="备注" FieldName="Remark" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>"
                DeleteCommand="DELETE FROM project_manager where(ID = ?)"
                InsertCommand="INSERT INTO project_manager (ID, project_id, User_id, `Right`, Remark) VALUES        (?,?,?,?,?)"
                ProviderName="<%$ ConnectionStrings:testConnectionString.ProviderName %>"
                SelectCommand="SELECT project_manager.* FROM project_manager"
                UpdateCommand="UPDATE       project_manager SET  project_id = ?, User_id = ?, `Right` = ?, Remark = ? Where(ID = ?)"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>