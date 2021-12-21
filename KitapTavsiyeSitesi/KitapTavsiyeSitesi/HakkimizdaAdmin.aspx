<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="KitapTavsiyeSitesi.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style10 {
            font-weight: bold;
        }
        .auto-style11 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong><span class="auto-style11">HAKKIMIZDA</span></strong>
        <asp:Panel ID="Panel2" runat="server">
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="400px" TextMode="MultiLine" Width="634px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="37px" Text="Güncelle" Width="223px" OnClick="Button1_Click" />
                    </strong></td>
                </tr>
            </table>
        </asp:Panel>
</asp:Content>
