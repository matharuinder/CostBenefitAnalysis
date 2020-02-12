<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="PA.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style12 {
            font-family: "Yu Gothic UI Light";
            color: #808080;
        }
        .auto-style15 {
            background-color: #2449A0;
        }
        
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 314px;
            font-family: "Yu Gothic UI Light";
            background-color: #2449A0;
        }
        .auto-style10 {
            font-family: "Yu Gothic UI Light";
            color: #FFFFFF;
            background-color: #2449A0;
        }
        .auto-style18 {
            font-size: xx-large;
            font-family: "Yu Gothic UI Light";
            color: #FFFFFF;
            background-color: #2449A0;
        }
        .auto-style11 {
            font-size: xx-large;
            font-family: "Yu Gothic UI Light";
            background-color: #2449A0;
        }
        .auto-style17 {
            color: #FFFFFF;
        }
        .auto-style22 {
            font-size: x-large;
        }
        .auto-style20 {
            text-decoration: none;
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style21 {
            font-family: "Yu Gothic UI Light";
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style23 {
            font-family: "Yu Gothic UI Light";
            color: #FFFFFF;
            background-color: #2449A0;
            text-decoration: none;
        }
        .auto-style24 {
            font-size: large;
        }
        .auto-style25 {
            font-family: "Segoe UI Light";
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <div>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style6"><span class="auto-style10">&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style18">PROJECT </span>
                            <br class="auto-style18" />
                            <span class="auto-style11"><span class="auto-style17">&nbsp; ANALYSIS&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></td>
                        <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style15"><span class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style22">&nbsp;</span><asp:LinkButton ID="lbhome" runat="server" CssClass="auto-style20">Home</asp:LinkButton>
                            </span><span class="auto-style21">&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style12">
                            <asp:LinkButton ID="lblogout" runat="server" CssClass="auto-style20">Logout</asp:LinkButton>
                            <span class="auto-style21">&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; </span>
                            <asp:LinkButton ID="lbsignup" runat="server" CssClass="auto-style20" PostBackUrl="~/Register.aspx">Signup</asp:LinkButton>
                            <span class="auto-style21">&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="lbprofile" runat="server" CssClass="auto-style23" OnClick="LinkButton1_Click">Profile</asp:LinkButton>
&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; </span>
                            <asp:LinkButton ID="lbcontactus" runat="server" CssClass="auto-style20">Contact US</asp:LinkButton>
                            </span></span></td>
                    </tr>
                </table>
        </div>
            <span class="auto-style3"><span style="font-size: x-large; color: #808080; font-family: 'Segoe UI Light'">
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Visible="False">LinkButton</asp:LinkButton>
            <br />
            <br />
        <table class="auto-style5">
            <tr>
                <td style="height: 59px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                    </span>
                    <span style="color: #808080; font-family: 'Segoe UI Light'">
            <span class="auto-style24">Project Name </span></span><span class="auto-style3"><span style="font-size: x-large; color: #808080; font-family: 'Segoe UI Light'"><span style="font-family: 'Segoe UI Light'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; </span>
                    <asp:TextBox ID="tbusername" runat="server" style="font-family: 'Segoe UI Light'"></asp:TextBox>
                </td>
                <td style="height: 59px"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="auto-style24">Project Description </span>
                    <span style="font-family: 'Segoe UI Light'">&nbsp;:&nbsp;&nbsp; </span>
                    <asp:TextBox ID="tbpassword" runat="server" style="font-family: 'Segoe UI Light'"></asp:TextBox>
                    <br />
            <span class="auto-style3"><span style="font-size: x-large; color: #808080; font-family: 'Segoe UI Light'">
            &nbsp;<span class="auto-style24">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Project Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    <span style="font-family: 'Segoe UI Light'">&nbsp;:&nbsp;&nbsp; </span>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style10" Width="239px">
                        <asp:ListItem>Cost analysis </asp:ListItem>
                        <asp:ListItem>Wiehted Analysis</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    </span> </span>
                    <br />
                </td>
                <td style="font-family: 'Segoe UI Light'">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25"><span style="font-size: x-large; color: #808080; font-family: 'Segoe UI Light'">
                    <span style="font-family: 'Segoe UI Light'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnAddProject" runat="server" OnClick="Button1_Click" style="font-family: 'Segoe UI Light'" Text="Create Project" Width="206px" PostBackUrl="~/addprojectCBS.aspx" />
                    <br />
            <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblRegister" runat="server" style="font-size: medium" Text="Press Register !"></asp:Label>
                    </span>
                    </span> </span>
                </td>
            </tr>
            <tr>
                <td style="font-family: 'Segoe UI Light'">&nbsp;</td>
            </tr>
            <tr>
                <td style="font-family: 'Segoe UI Light'">&nbsp;</td>
            </tr>
            <tr>
                <td><span style="font-family: 'Segoe UI Light'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                    </span></td>
                <td style="font-family: 'Segoe UI Light'">&nbsp;</td>
            </tr>
            <tr>
                <td style="font-family: 'Segoe UI Light'">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginRegistrationConnectionString %>" DeleteCommand="DELETE FROM [registration] WHERE [userid] = @userid" InsertCommand="INSERT INTO [registration] ([username], [password], [email], [firstname], [lastname]) VALUES (@username, @password, @email, @firstname, @lastname)" SelectCommand="SELECT * FROM [registration]" UpdateCommand="UPDATE [registration] SET [username] = @username, [password] = @password, [email] = @email, [firstname] = @firstname, [lastname] = @lastname WHERE [userid] = @userid">
                        <DeleteParameters>
                            <asp:Parameter Name="userid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="firstname" Type="String" />
                            <asp:Parameter Name="lastname" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="username" Type="String" />
                            <asp:Parameter Name="password" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="firstname" Type="String" />
                            <asp:Parameter Name="lastname" Type="String" />
                            <asp:Parameter Name="userid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td style="font-family: 'Segoe UI Light'">&nbsp;</td>
            </tr>
        </table>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" style="font-size: medium" Text="Press to Login !"></asp:Label>
            &nbsp; </span>
        </div>
    </form>
</body>
</html>
