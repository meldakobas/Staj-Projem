<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="KitapTavsiyeSitesi.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style16 {
            width: 548px;
        }
        .auto-style18 {
            width: 622px;
        }
        .auto-style19 {
            width: 580px;
        }
        .auto-style20 {
            width: 554px;
        }
        .auto-style21 {
            width: 555px;
        }
        .auto-style22 {
            width: 556px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" BackColor="#00CC99">
        <table class="auto-style1">
            <tr>
                <td class="auto-style19">ONAYLANAN YORUM LİSTESİ</td>
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
        <asp:DataList ID="DataList1" runat="server" Width="647px" >
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Yorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/çarpıikonu.png" /></a>
                        </td>
                        <td class="auto-style6">
                           <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"> <asp:Image ID="Image3" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/detayikonu.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
     <asp:Panel ID="Panel3" runat="server" BackColor="#00CC99">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">ONAYLANMAYAN YORUM LİSTESİ</td>
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
        <asp:DataList ID="DataList2" runat="server" Width="644px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Yorumlar.aspx?Yorumid=<%#Eval("Yorumid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/çarpıikonu.png" /></a>
                        </td>
                        <td class="auto-style6">
                           <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/detayikonu.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
