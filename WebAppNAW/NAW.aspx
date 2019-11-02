<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NAW.aspx.cs" Inherits="WebAppNAW.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: right;
            width: 96px;
        }
        .auto-style4 {
            width: 176px;
        }
        .auto-style5 {
            width: 96px;
        }
        .auto-style6 {
            text-align: right;
            width: 96px;
            height: 26px;
        }
        .auto-style7 {
            width: 176px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
            color: #990000;
        }
        .auto-style9 {
            color: #990000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">User Name:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">E-mail:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="E-mail is required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter a valid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxComPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxComPass" ErrorMessage="Confirm Password is required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxComPass" ErrorMessage="Both passwords must be the same"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Country:</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownListCtry" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="180px">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>UK</asp:ListItem>
                            <asp:ListItem>Netherlands</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCtry" ErrorMessage="Select a country name" InitialValue="Select Country"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                        <input id="Reset1" type="reset" value="reset" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
