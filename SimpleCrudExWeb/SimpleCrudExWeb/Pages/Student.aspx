<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Pages_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous" />

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>           
            <div id="divSuccess" runat="server" class="alert alert-success" visible="false">
                                <strong>Success!</strong> <asp:Label Text="" ID="lblSuccessMessage" runat="server" />
                            </div>
                            <div id="divError" runat="server" class="alert alert-danger" visible="false">
                                <strong>Failed!</strong> An Error Occured while processing your request.<asp:Label Text="" ID="lblError" runat="server" />
                            </div>
        <table style="width: 100%; text-align: center">
            <tr style="vertical-align: top">
                <td style="width: 40%">
                    <div class="panel panel-primary">
                        <div class="panel-heading">Student Details</div>
                        <div class="panel-body">   
                             <div>
                <asp:ValidationSummary ID="vsStudent" DisplayMode="BulletList" CssClass="alert-danger text-left" runat="server" />
            </div>
                            <table class="table table-hover">
                                <tr>
                                    <td>
                                        <asp:Label Text="ID" runat="server" /></td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control disabled" Enabled="false" ID="txtStudentID" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label Text="First Name" runat="server" /></td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtStudentFirstName" />
                                        <asp:RequiredFieldValidator CssClass="alert-danger" ID="rfvFirstName" 
                                            ErrorMessage="Pleae provide the first name." 
                                            Text="First name is Required"
                                            ControlToValidate="txtStudentFirstName" runat="server" />
                                        <asp:RegularExpressionValidator ErrorMessage="First name must be all letters, cannot contain numbers or special charcters" Text="Firs name is invalid"
                                            ValidationExpression="^[a-zA-Z\s]+$"
                                            CssClass="alert-danger"
                                            ControlToValidate="txtStudentFirstName" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label Text="Middle Name" runat="server" /></td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtStudentMiddleName" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label Text="Last Name" runat="server" /></td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtStudentLastName" />
                                        <asp:RequiredFieldValidator ID="rfvLastName" 
                                            ErrorMessage="Please provide the last name" 
                                            Text="Last name is required"
                                            CssClass="alert-danger" ControlToValidate="txtStudentLastName" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label Text="Username" runat="server" /></td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtUsername" />
                                        <asp:RequiredFieldValidator ID="rfvUsername" 
                                            ErrorMessage="Please provide the Username" 
                                            Text="Username is required"
                                            CssClass="alert-danger" ControlToValidate="txtUsername" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label Text="Password" runat="server" /></td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" TextMode="Password" />
                                        <asp:RequiredFieldValidator ID="rfvPassword" 
                                            ErrorMessage="Please provide the Password" 
                                            Text="Password is required"
                                            CssClass="alert-danger" ControlToValidate="txtPassword" runat="server" />
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                        <asp:Label Text="Confirm Password" runat="server" /></td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtConfirmPassword" TextMode="Password" />
                                        <asp:RequiredFieldValidator ID="rfvConfirmPassword" 
                                            ErrorMessage="Please provide the Password" 
                                            Text="Passwords is required"
                                            CssClass="alert-danger" ControlToValidate="txtConfirmPassword" runat="server" />
                                        <asp:CompareValidator CssClass="alert-danger" ErrorMessage="Please enter the same passwords" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label Text="Age" runat="server" /></td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtAge"/>
                                        <asp:RangeValidator ErrorMessage="Must be older than 18 and younger than 100" 
                                            ControlToValidate="txtAge" Type="Integer"
                                            MinimumValue ="18"
                                            MaximumValue ="100"
                                            CssClass="alert-danger"
                                            runat="server" />

                                        <asp:CompareValidator CssClass="alert-danger" ErrorMessage="Please enter the same passwords" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label Text="Department" runat="server" />
                                    </td>
                                    <td>
                                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlDepartments">
                                            <asp:ListItem Text="" Value="0" />
                                            <asp:ListItem Text="Computer Science" Value="4" />
                                            <asp:ListItem Text="English" Value="1" />
                                            <asp:ListItem Text="Mathematics" Value="2" />
                                            <asp:ListItem Text="Physics" Value="3" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="rfvDepartments" InitialValue="0" 
                                            ErrorMessage="Please choose a department"
                                            Text="Deparment is required"
                                            CssClass="alert-danger" ControlToValidate="ddlDepartments" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: center">
                                        <asp:Button Text="Save" CssClass="btn btn-primary" runat="server" ID="btnSave" OnClick="btnSave_Click" />
                                        <asp:Button Text="Delete" CssClass="btn btn-danger" runat="server" ID="btnDelete" OnClick="btnDelete_Click" />
                                        <asp:Button Text="Cancel" CssClass="btn btn-default" runat="server" ID="btnCancel" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </td>
                <td style="width: 5%"></td>
                <td style="width: 55%">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Students
                        </div>
                        <div class="panel-body">
                            <asp:GridView runat="server" ID="gvStudents" AutoGenerateColumns="false"
                                CssClass="table table-hover table-striped text-left" GridLines="None" OnRowCommand="gvStudents_RowCommand">
                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStudentID" Text='<%# Eval("ID")%>' runat="server" />
                                        </ItemTemplate>
                                        <AlternatingItemTemplate>
                                            <asp:Label ID="lblStudentID"  Text='<%# Eval("ID")%>' runat="server" />
                                        </AlternatingItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="First Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStudFirstName" Text='<%# Eval("StudFirstName")%>' runat="server" />
                                        </ItemTemplate>
                                        <AlternatingItemTemplate>
                                            <asp:Label ID="lblStudFirstName" Text='<%# Eval("StudFirstName")%>' runat="server" />
                                        </AlternatingItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Middle Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStudMiddleName" Text='<%# Eval("StudMiddleName")%>' runat="server" />
                                        </ItemTemplate>
                                        <AlternatingItemTemplate>
                                            <asp:Label ID="lblStudMiddleName" Text='<%# Eval("StudMiddleName")%>' runat="server" />
                                        </AlternatingItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Last Name">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStudLastName" Text='<%# Eval("StudLastName")%>' runat="server" />
                                        </ItemTemplate>
                                        <AlternatingItemTemplate>
                                            <asp:Label ID="lblStudLastName" Text='<%# Eval("StudLastName")%>' runat="server" />
                                        </AlternatingItemTemplate>
                                    </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Department" Visible="false">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDepartmentID" Text='<%# Eval("Department.ID")%>' runat="server" />
                                        </ItemTemplate>
                                        <AlternatingItemTemplate>
                                            <asp:Label ID="lblDepartmentID" Text='<%# Eval("Department.ID")%>' runat="server" />
                                        </AlternatingItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Department">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDepartmentDescription" Text='<%# Eval("Department.DepartmentDescription")%>' runat="server" />
                                        </ItemTemplate>
                                        <AlternatingItemTemplate>
                                            <asp:Label ID="lblDepartmentDescription" Text='<%# Eval("Department.DepartmentDescription")%>' runat="server" />
                                        </AlternatingItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <asp:Button CssClass="btn btn-default" Text="Select" CommandName="Select" CommandArgument='<%# Container.DataItemIndex  %>' runat="server" />
                                        </ItemTemplate>
                                        <AlternatingItemTemplate>
                                            <asp:Button CssClass="btn btn-default" Text="Select" CommandArgument='<%# Container.DataItemIndex %>' runat="server" />
                                        </AlternatingItemTemplate>
                                    </asp:TemplateField>
                                  
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
            </div>
    </form>
</body>
</html>
