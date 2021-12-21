<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="KitapTavsiyeSitesi.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="642px">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"><strong><a href="KitapDetay.aspx?Kitapid=<%# Eval("Kitapid") %>">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style13" Text='<%# Eval("KitapAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td><strong>Yazar:</strong><asp:Label ID="Label3" runat="server" Text='<%# Eval("KitapYazar") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Kitabın Konusu:</strong><asp:Label ID="Label8" runat="server" Text='<%# Eval("KitapKonu") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong>Eklenme Tarihi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("KitapTarih") %>'></asp:Label>
                        -<strong>Puan:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("KitapPuan") %>'></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="border-bottom-style: inset; border-left-style: none; border-bottom-width: 5px; border-bottom-color: #006666">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
