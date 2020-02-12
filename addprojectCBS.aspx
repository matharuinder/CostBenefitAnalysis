<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addprojectCBS.aspx.cs" Inherits="PA.addprojectCBS" %>

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
            font-family: "Segoe UI Light";
        }
        .auto-style24 {
            font-size: large;
        }
        .auto-style25 {
            font-family: "Segoe UI Light";
            font-size: large;
        }
        .auto-style26 {
            font-size: small;
        }
        .auto-style27 {
            font-family: "Segoe UI Light";
            font-size: small;
        }
        .auto-style28 {
            font-size: xx-large;
            height: 26px;
        }
        .auto-style29 {
            height: 26px;
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
                        <asp:LinkButton ID="lblogout" runat="server" CssClass="auto-style20" OnClick="lblogin_Click" PostBackUrl="~/Login.aspx">Logout</asp:LinkButton>
                        <span class="auto-style21">&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; </span>
                        <asp:LinkButton ID="lbprofile" runat="server" CssClass="auto-style20" PostBackUrl="~/Profile.aspx">Profile</asp:LinkButton>
                        <span class="auto-style21">&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; </span>
                        <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style20">ContactUs</asp:LinkButton>
                        </span></span></td>
                </tr>
            </table>
        </div>
        <span class="auto-style3"><span style="font-size: x-large; color: #808080; font-family: 'Segoe UI Light'">
        <br />
        </span>
        <table class="auto-style5">
            <tr>
                <td style="height: 59px">&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style23"><span class="auto-style24">BuildCost</span></span><span class="auto-style3"><span style="font-family: 'Segoe UI Light'">&nbsp;:&nbsp;&nbsp; </span>
                    <asp:TextBox ID="tbbuildcost" runat="server" style="font-family: 'Segoe UI Light'"></asp:TextBox>
                </td>
                <td style="height: 59px"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="auto-style25">Please enter the Maintainence cost for Four Years :<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year 1</span><span style="font-family: 'Segoe UI Light'" class="auto-style26">&nbsp;:&nbsp;&nbsp; </span>
                    <asp:TextBox ID="tbyear1" runat="server" style="font-family: 'Segoe UI Light'" CssClass="auto-style26" OnTextChanged="tbyear1_TextChanged" Width="128px"></asp:TextBox>
                    <span class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
        <span class="auto-style3"><span class="auto-style27">Year 2</span></span><span style="font-family: 'Segoe UI Light'" class="auto-style26">&nbsp;:&nbsp;&nbsp; </span>
        <span class="auto-style3">
                    <asp:TextBox ID="tbyear2" runat="server" style="font-family: 'Segoe UI Light'" CssClass="auto-style26" Width="128px"></asp:TextBox>
        <span class="auto-style26">&nbsp;
        </span>
                    <span class="auto-style27">&nbsp;&nbsp; Year 3</span><span style="font-family: 'Segoe UI Light'" class="auto-style26">&nbsp;:&nbsp;&nbsp; </span>
                    <asp:TextBox ID="tbyear3" runat="server" style="font-family: 'Segoe UI Light'" CssClass="auto-style26" Width="128px"></asp:TextBox>
        <span class="auto-style26">&nbsp;
        </span>
                    <span class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year 4</span><span style="font-family: 'Segoe UI Light'" class="auto-style26">&nbsp;:&nbsp; </span>
                    <asp:TextBox ID="tbyear4" runat="server" style="font-family: 'Segoe UI Light'" CssClass="auto-style26" Width="128px"></asp:TextBox>
        </span>
                </td>
                <td style="font-family: 'Segoe UI Light'">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"><span class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please enter the Benifits for Four Years :<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year 1</span><span style="font-family: 'Segoe UI Light'" class="auto-style26">&nbsp;:&nbsp;&nbsp; </span>
                    <asp:TextBox ID="tbyear5" runat="server" style="font-family: 'Segoe UI Light'" CssClass="auto-style26" OnTextChanged="tbyear1_TextChanged" Width="128px"></asp:TextBox>
                    <span class="auto-style26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style27">Year 2</span><span style="font-family: 'Segoe UI Light'" class="auto-style26">&nbsp;:&nbsp;&nbsp; </span>
                    <asp:TextBox ID="tbyear6" runat="server" style="font-family: 'Segoe UI Light'" CssClass="auto-style26" Width="128px"></asp:TextBox>
        <span class="auto-style26">&nbsp;
        </span>
                    <span class="auto-style27">&nbsp;&nbsp; Year 3</span><span style="font-family: 'Segoe UI Light'" class="auto-style26">&nbsp;:&nbsp;&nbsp; </span>
                    <asp:TextBox ID="tbyear7" runat="server" style="font-family: 'Segoe UI Light'" CssClass="auto-style26" Width="128px"></asp:TextBox>
        <span class="auto-style26">&nbsp;
        </span>
                    <span class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year 4</span><span style="font-family: 'Segoe UI Light'" class="auto-style26">&nbsp;:&nbsp; </span>
                    <asp:TextBox ID="tbyear8" runat="server" style="font-family: 'Segoe UI Light'" CssClass="auto-style26" Width="128px"></asp:TextBox>
                </td>
                <td style="font-family: 'Segoe UI Light'">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="auto-style25">Disccount Factor</span><span style="font-family: 'Segoe UI Light'">&nbsp;:&nbsp; </span>
                    <asp:DropDownList ID="ddldiscountfactor" runat="server" CssClass="auto-style10" Width="199px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="font-family: 'Segoe UI Light'">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">
                </td>
                <td style="font-family: 'Segoe UI Light'" class="auto-style29"></td>
            </tr>
            <tr>
                <td><span style="font-family: 'Segoe UI Light'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style3">
                    <asp:Button ID="btnproject" runat="server" OnClick="Button1_Click" style="font-family: 'Segoe UI Light'" Text="Add Project" Width="206px" />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:Label ID="lblRegister" runat="server" style="font-size: medium" Text="Press to Add Project !"></asp:Label>
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
        <span class="auto-style3">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
        </span>
                    <br />
                </td>
                <td style="font-family: 'Segoe UI Light'">&nbsp;</td>
            </tr>
        </table>
        <p style="font-family: 'Segoe UI Light'">
            &nbsp;</p>
        <p>
            <br style="font-family: 'Segoe UI Light'" />
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        </span>
        </div>
    </form>
    </body>
</html>
