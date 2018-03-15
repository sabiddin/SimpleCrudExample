<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RepeaterExample.aspx.cs" Inherits="Pages_RepeaterExample" %>

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
            <asp:Repeater runat="server" ID="rptStudents">                
                <HeaderTemplate>
                    <table class="table table-hover table-striped text-left">
                        <thead class="bg-primary">
                            <th>ID</th>
                            <th>First Name</th>
                            <th>Middle Name</th>
                            <th>Last Name</th>
                            <th>Department</th>
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
                            </tr>                                        
                        </tbody>
                </AlternatingItemTemplate>                
                <FooterTemplate>                        
                    </table>
                </FooterTemplate>
            </asp:Repeater>            
        </div>
    </form>
</body>
</html>
