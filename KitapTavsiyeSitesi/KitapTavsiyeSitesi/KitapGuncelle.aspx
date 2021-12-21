<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KitapGuncelle.aspx.cs" Inherits="KitapTavsiyeSitesi.KitapGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>KİTAP AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>YAZAR:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="90px" TextMode="SingleLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>KONU:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>RESİM:</strong></td>
            <td class="auto-style5">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="482px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>KATEGORİ:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Text="GÜNCELLE" Width="350px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" Text="Haftanın Kitabı Yap" Width="165px" OnClick="Button2_Click1" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
