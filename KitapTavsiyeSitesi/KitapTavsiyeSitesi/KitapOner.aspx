<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KitapOner.aspx.cs" Inherits="KitapTavsiyeSitesi.KitapOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Kitap Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtKitapAd" runat="server" Width="360px" Height="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Yazar:</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="TxtYazar" runat="server" Height="20px" Width="362px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Konu:</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtKonu" runat="server" Height="200px" TextMode="MultiLine" Width="362px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="441px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" Width="360px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mail:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="360px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="BtnKitapOner" runat="server" BackColor="#9966FF" Height="40px" Text="Kitap Öner" Width="150px" OnClick="BtnKitapOner_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
