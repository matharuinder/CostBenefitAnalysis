<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PA.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

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
        .auto-style15 {
            background-color: #2449A0;
        }
        .auto-style12 {
            font-family: "Yu Gothic UI Light";
            color: #808080;
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
        .auto-style22 {
            font-size: x-large;
        }

        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style23 {
            font-family: "Yu Gothic UI Light";
            color: #FFFFFF;
            background-color: #2449A0;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                        <asp:LinkButton ID="lblogin" runat="server" CssClass="auto-style20">Login</asp:LinkButton>
                        <span class="auto-style21">&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; </span>
                        <asp:LinkButton ID="lbsignup" runat="server" CssClass="auto-style20" PostBackUrl="~/Register.aspx">Signup</asp:LinkButton>
                        <span class="auto-style21">&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="lbprofile" runat="server" CssClass="auto-style23" OnClick="LinkButton1_Click" PostBackUrl="~/Profile.aspx">Profile</asp:LinkButton>
&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; </span>
                        <asp:LinkButton ID="lbcontactus" runat="server" CssClass="auto-style20">Contact US</asp:LinkButton>
                        </span></span></td>
                </tr>
            </table>
        </div>
        <span class="auto-style3"><span style="font-size: x-large; color: #808080; font-family: 'Segoe UI Light'">
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username&nbsp; :&nbsp; </span>
        <asp:TextBox ID="tbusername" runat="server" OnTextChanged="TextBox1_TextChanged" style="font-size: x-large; color: #808080; font-family: 'Segoe UI Light'"></asp:TextBox>
        &nbsp; <span style="font-size: x-large; color: #808080; font-family: 'Segoe UI Light'">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp;&nbsp; :&nbsp; </span>
        <asp:TextBox ID="tbpassword" runat="server" OnTextChanged="TextBox1_TextChanged" style="font-size: x-large; color: #808080; font-family: 'Segoe UI Light'"></asp:TextBox>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnlogin" runat="server" CssClass="auto-style14" ForeColor="White" OnClick="btnlogin_Click" style="background-color: #000099" Text="LOGIN" Width="301px" />
&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" CssClass="auto-style3" style="font-size: medium" Text="Press to Login !"></asp:Label>
        &nbsp; 
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Visible="False"></asp:TextBox>
        </span>
    </form>
</body>
</html>
