<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kitaplar.aspx.cs" Inherits="KitapTavsiyeSitesi.Kitaplar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 535px;
        }
        .auto-style16 {
            width: 539px;
        }
        .auto-style17 {
            width: 548px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server" BackColor="#00CC99">
        <table class="auto-style1">
            <tr>
                <td class="auto-style16">KİTAP LİSTESİ</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Height="25px"  Text="AÇ" Width="50px" OnClick="Button2_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Height="25px"  Text="KAPAT" Width="50px" OnClick="Button3_Click"  />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="644px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KitapAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Kitaplar.aspx?Kitapid=<%#Eval("Kitapid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" Width="30px" /></a>
                        </td>
                        <td class="auto-style6">
                            <a href="KitapGuncelle.aspx?Kitapid=<%#Eval("Kitapid")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" BackColor="#00CC99" margin-top="15px;">
        <table class="auto-style1">
            <tr>
                <td class="auto-style15">KİTAP EKLEME</td>
                <td>
                    <asp:Button ID="Button4" runat="server" Height="25px" Text="AÇ" Width="50px" OnClick="Button4_Click"  />
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
                <td>KİTAP AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KİTAP YAZAR:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="352px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KİTAP KONU:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="352px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KİTAP RESİM:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="432px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">KATEGORİ:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style12">
                    <asp:Button ID="Button6" runat="server" Text="EKLE" Width="200px" OnClick="Button6_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
