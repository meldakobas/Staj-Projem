<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanıcı.Master" AutoEventWireup="true" CodeBehind="HaftaninKitabi.aspx.cs" Inherits="KitapTavsiyeSitesi.HaftaninKitabi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="642px">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"><strong>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("KitapAd") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("KitapYazar") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("KitapKonu") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Image ID="Image1" runat="server" Height="118px" Width="249px" ImageUrl='<%# Eval("KitapResim") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("KitapPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("KitapTarih") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
