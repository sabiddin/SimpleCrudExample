<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataListExample.aspx.cs" Inherits="DataListExample" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous" />

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server" />
        <div class="container text-left">
            <div class ="row">
                <div class="col-lg-12">
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <asp:DataList runat="server" ID="dlStudents" OnCancelCommand="dlStudents_CancelCommand" OnEditCommand="dlStudents_EditCommand" OnUpdateCommand="dlStudents_UpdateCommand">
                                <HeaderTemplate>
                                    <table class="table table-hover table-striped text-left">
                                        <thead class="bg-primary">
                                            <th>ID</th>
                                            <th>First Name</th>
                                            <th>Middle Name</th>
                                            <th>Last Name</th>
                                            <th>Department</th>
                                            <th></th>
                                        </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblStudentID" Text='<%# Eval("ID")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblStudFirstName" Text='<%# Eval("StudFirstName")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblStudMiddleName" Text='<%# Eval("StudMiddleName")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblStudLastName" Text='<%# Eval("StudLastName")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDepartmentID" Visible="false" Text='<%# Eval("Department.ID")%>' runat="server" />
                                                <asp:Label ID="lblDepartmentDescription" Text='<%# Eval("Department.DepartmentDescription")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Button Text="Edit" runat="server" ID="btnEdit" CssClass="btn btn-link" CommandName="edit" />
                                            </td>
                                        </tr>
                                    </tbody>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblStudentID" Text='<%# Eval("ID")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblStudFirstName" Text='<%# Eval("StudFirstName")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblStudMiddleName" Text='<%# Eval("StudMiddleName")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblStudLastName" Text='<%# Eval("StudLastName")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblDepartmentID" Visible="false" Text='<%# Eval("Department.ID")%>' runat="server" />
                                                <asp:Label ID="lblDepartmentDescription" Text='<%# Eval("Department.DepartmentDescription")%>' runat="server" />
                                            </td>
                                            <td>
                                                <asp:Button Text="Edit" runat="server" ID="btnEdit" CssClass="btn btn-link" CommandName="edit" />
                                            </td>
                                        </tr>
                                    </tbody>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                    <div class="container container-fluid">
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="form-group-lg">
                                                    <asp:Label Text="ID" runat="server" />
                                                    <asp:TextBox ID="txtID" CssClass="form-control" Text='<%# Eval("ID")%>' runat="server" />
                                                </div>
                                                <div class="form-group-lg">
                                                    <asp:Label Text="First Name" runat="server" />
                                                    <asp:TextBox ID="txtFirstName" CssClass="form-control" Text='<%# Eval("StudFirstName")%>' runat="server" />
                                                </div>
                                                <div class="form-group-lg">
                                                    <asp:Label Text="Middle Name" runat="server" />
                                                    <asp:TextBox ID="txtMiddleName" CssClass="form-control" Text='<%# Eval("StudMiddleName")%>' runat="server" />
                                                </div>
                                                <div class="form-group-lg">
                                                    <asp:Label Text="Last Name" runat="server" />
                                                    <asp:TextBox ID="txtLastName" CssClass="form-control" Text='<%# Eval("StudLastName")%>' runat="server" />
                                                </div>
                                                <div class="form-group-lg">
                                                    <asp:Label Text="Department" runat="server" />
                                                    <asp:DropDownList runat="server" CssClass="form-control" SelectedValue='<%# Eval("Department.ID")%>' ID="ddlDepartments">
                                                        <asp:ListItem Text="" Value="0" />
                                                        <asp:ListItem Text="Computer Science" Value="4" />
                                                        <asp:ListItem Text="English" Value="1" />
                                                        <asp:ListItem Text="Mathematics" Value="2" />
                                                        <asp:ListItem Text="Physics" Value="3" />
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2 text-left">
                                                <asp:Button Text="Save" CommandName="update" CssClass="btn btn-default" runat="server" />
                                                <asp:Button Text="Cancel" CssClass="btn btn-warning" CommandName="cancel" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    </table>  
                                    <div class="btn btn-primary">
                    <asp:Button CssClass="btn btn-primary" Text="Add" ID="btnAdd" OnClick="btnAdd_Click" runat="server" />
                                        <span class="glyphicon glyphicon-thumbs-up"></span>
                                        </div>
                                </FooterTemplate>
                            </asp:DataList>
                            <div class="container container-fluid" id="divAdd" runat="server" visible="false">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group-lg">
                                            <asp:Label Text="ID" runat="server" />
                                            <asp:TextBox ID="txtID" CssClass="form-control" runat="server" />
                                        </div>
                                        <div class="form-group-lg">
                                            <asp:Label Text="First Name" runat="server" />
                                            <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server" />
                                        </div>
                                        <div class="form-group-lg">
                                            <asp:Label Text="Middle Name" runat="server" />
                                            <asp:TextBox ID="txtMiddleName" CssClass="form-control" runat="server" />
                                        </div>
                                        <div class="form-group-lg">
                                            <asp:Label Text="Last Name" runat="server" />
                                            <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server" />
                                        </div>
                                        <div class="form-group-lg">
                                            <asp:Label Text="Department" runat="server" />
                                            <asp:DropDownList runat="server" CssClass="form-control" ID="ddlDepartments">
                                                <asp:ListItem Text="" Value="0" />
                                                <asp:ListItem Text="Computer Science" Value="4" />
                                                <asp:ListItem Text="English" Value="1" />
                                                <asp:ListItem Text="Mathematics" Value="2" />
                                                <asp:ListItem Text="Physics" Value="3" />
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2 text-left">
                                        <asp:Button Text="Save" ID="btnSave" OnClick="btnSave_Click" CssClass="btn btn-default" runat="server" />                                        
                                        <asp:Button Text="Cancel" ID="btnCancel" OnClick="btnCancel_Click" CssClass="btn btn-warning" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
        </div>
            </div>
        </div>
        
    </form>
</body>
</html>
