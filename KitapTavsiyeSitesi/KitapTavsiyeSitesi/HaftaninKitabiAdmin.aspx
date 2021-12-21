<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HaftaninKitabiAdmin.aspx.cs" Inherits="KitapTavsiyeSitesi.HaftaninKitabiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
    .auto-style10 {
        width: 546px;
    }
    .auto-style11 {
        width: 382px;
    }
         .auto-style15 {
             height: 20px;
             width: 583px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" BackColor="#00CC99">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">KİTAP LİSTESİ</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="25px"  Text="AÇ" Width="50px" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Height="25px"  Text="KAPAT" Width="50px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="645px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KitapAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                        <a href="KitapGuncelle.aspx?Kitapid=<%#Eval("Kitapid")%>"><asp:Image ID="Image2" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/detayikonu.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
