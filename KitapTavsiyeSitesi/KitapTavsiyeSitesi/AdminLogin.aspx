<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="KitapTavsiyeSitesi.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 41%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
        <div style="background-color:#64a8a8;margin:50px; width:220px; height:220px; padding:30px;">

            <table class="auto-style1">
                <tr>
                    <td>
                        Kullanıcı adı:</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="Kullanıcı adınız" Width="200px" Height="20px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Şifre:</td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"  placeholder="Şifreniz" TextMode="Password" Height="20px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        Beni Hatırla</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Giriş" Height="34px" Width="90px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
