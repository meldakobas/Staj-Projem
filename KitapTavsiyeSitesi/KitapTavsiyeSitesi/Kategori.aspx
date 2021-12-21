<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="KitapTavsiyeSitesi.Kategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style12 {
            height: 30px;
        }
        .auto-style13 {
            font-weight: bold;
        }
        .auto-style14 {
            width: 543px;
        }
        .auto-style15 {
            width: 550px;
        }
        .auto-style16 {
            width: 548px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" BackColor="#00CC99">
        <table class="auto-style1" style="height:25px">
            <tr>
                <td class="auto-style16">KATEGORİ LİSTESİ</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="25px" Text="AÇ" Width="50px" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Height="25px" Text="KAPAT" Width="50px" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="642px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style15">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Kategori.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/çarpıikonu.png" /></a>
                        </td>
                        <td class="auto-style6">
                           <a href="KategoriGuncelle.aspx?Kategoriid=<%#Eval("Kategoriid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" Width="30px" ImageUrl="~/Resimler/detayikonu.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#00CC99" margin-top=15px;>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style16">KATEGORİ EKLEME</td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Height="25px" Text="AÇ" Width="50px" OnClick="Button4_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Height="25px" Text="KAPAT" Width="50px" OnClick="Button5_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>KATEGORİ AD:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="370px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>KATEGORİ İKON:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="450px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style12">
                <asp:Button ID="Button6" runat="server" CssClass="auto-style13" Text="EKLE" Width="254px" OnClick="Button6_Click" />
            </td>
        </tr>
    </table>
        </asp:Panel>
</asp:Content>
