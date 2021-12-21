<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KitapOnerileri.aspx.cs" Inherits="KitapTavsiyeSitesi.KitapOnerileri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style10 {
            width: 546px;
        }
        .auto-style12 {
            width: 545px;
        }
        .auto-style13 {
            width: 548px;
        }
        .auto-style14 {
            width: 547px;
        }
        .auto-style15 {
            width: 552px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" BackColor="#00CC99">
        <table class="auto-style1">
            <tr>
                <td class="auto-style13">ONAYLANAN KİTAP ÖNERİLERİ</td>
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
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("OneriKitapAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="KitapOnerileri.aspx?OneriKitapid=<%#Eval("OneriKitapid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/çarpıikonu.png" /></a>
                        </td>
                        <td class="auto-style6">
                           <a href="KitapOnerileriDetay.aspx?OneriKitapid=<%#Eval("OneriKitapid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/detayikonu.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#00CC99">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">ONAY BEKLEYEN KİTAP ÖNERİLERİ</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="25px"  Text="AÇ" Width="50px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Height="25px"  Text="KAPAT" Width="50px" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="646px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("OneriKitapAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="KitapOnerileri.aspx?OneriKitapid=<%#Eval("OneriKitapid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/çarpıikonu.png" /></a>
                        </td>
                        <td class="auto-style6">
                           <a href="KitapOnerileriDetay.aspx?OneriKitapid=<%#Eval("OneriKitapid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/detayikonu.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
