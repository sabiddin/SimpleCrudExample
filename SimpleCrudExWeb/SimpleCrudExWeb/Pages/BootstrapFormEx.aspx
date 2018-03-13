<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BootstrapFormEx.aspx.cs" Inherits="Pages_BootstrapFormEx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label Text="First Name" runat="server" />
                        <asp:TextBox ID="txtFirtName" CssClass="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <asp:Label Text="Middle Name" runat="server" />
                        <asp:TextBox ID="txtMiddleName" CssClass="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <asp:Label Text="Last Name" runat="server" />
                        <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <asp:Label Text="Username" runat="server" />
                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" />
                    </div>
                    <div class="form-group">
                        <asp:Label Text="Password" runat="server" />
                        <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server" />
                    </div>
                    <div class="form-group">
                        <asp:Label Text="Confirm Password" runat="server" />
                        <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" TextMode="Password" runat="server" />
                    </div>
                    <div class="form-group">
                        <asp:Label Text="Date of birth" runat="server" />
                        <div class="form-group">
                            <div class='input-group date' id='datetimepicker1'>
                                <input type='text' class="form-control" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label Text="Gender" runat="server" />
                            <div class="radio">
                                <label class="btn btn-default">
                                    <asp:RadioButton ID="IsMale" runat="server"
                                        GroupName="gender"
                                        Checked="true"
                                        Text="Male" />
                                </label>
                            </div>
                            <div class="radio">
                                <label class="btn btn-default">
                                    <asp:RadioButton ID="IsFemale" runat="server"
                                        GroupName="gender"
                                        Text="Female" />
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <asp:Button Text="Save" CssClass="btn btn-default" runat="server" />                
                    <asp:Button Text="Cancel" CssClass="btn btn-warning" runat="server" />
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        $(function () {
            $('#datetimepicker1').datetimepicker();
        });
    </script>
</body>
</html>
