<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Chitiet.aspx.cs" Inherits="ShopGiay.Chitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 101%;
            height: 126px;
            margin-left:200px;
            background-color:ghostwhite;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            margin-right: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MASP" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table class="auto-style1" border="1">
                <tr>
                    <td colspan="2" rowspan="3">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' Width="560px" Height="550px" />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Mã SP:"></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("MASP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Tên SP:"></asp:Label>
                        &nbsp;<asp:Label ID="Label4" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Giá:
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("GIABAN") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("hinhchitiet") %>' Width="239px" Height="143px"/>
                    </td>
                    <td>
                        <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("hinhchitiet1") %>' Width="234px" Height="139px"/>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Text="Đặt Hàng" Width="264px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
       
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_ShopGiayConnectionString5 %>" SelectCommand="SELECT * FROM [THONGTINDM] WHERE ([MASP] = @MASP)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MASP" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
