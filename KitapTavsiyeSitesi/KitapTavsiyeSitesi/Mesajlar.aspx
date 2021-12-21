<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="KitapTavsiyeSitesi.Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 541px;
        }

        .auto-style12 {
            width: 543px;
        }

        .auto-style13 {
            width: 551px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="#00CC99">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">MESAJLAR&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="25px"  Text="AÇ" Width="50px" OnClick="Button2_Click1" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Height="25px"  Text="KAPAT" Width="50px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="644px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Mesajlar.aspx?Mesajid=<%#Eval("Mesajid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/çarpıikonu.png" /></a>
                        </td>
                        <td class="auto-style6">
                           <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/detayikonu.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
