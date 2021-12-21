<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KitapOnerileriDetay.aspx.cs" Inherits="KitapTavsiyeSitesi.KitapOnerileriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            height: 23px;
            width: 213px;
        }
        .auto-style14 {
            text-align: right;
            font-weight: bold;
        }
        .auto-style21 {
            text-align: left;
        }
        .auto-style22 {
            height: 26px;
            text-align: left;
        }
        .auto-style23 {
            text-align: right;
            width: 213px;
        }
        .auto-style24 {
            height: 26px;
            text-align: right;
            width: 213px;
        }
        .auto-style25 {
            text-align: right;
            font-weight: bold;
            margin-left: 50px;
        }
        .auto-style26 {
            text-align: right;
            width: 213px;
            height: 22px;
        }
        .auto-style27 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style23">Kitap<strong> Ad :</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox1" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">Yazar<strong>:</strong></td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox2" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">Konu<strong>:</strong></td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Resim:</strong></td>
                <td class="auto-style21">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="22px" Width="430px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Kitap<strong> Öneren Ad Soyad:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox4" runat="server" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">Kitap<strong> Öneren Mail:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Email" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><strong>Kategori id:</strong></td>
                <td class="auto-style22">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Text="Tarif Onayla" Width="106px" Height="32px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style27"></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
