<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Page02.aspx.cs" Inherits="ShopGiay.Page02" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
            background-color:silver;
            margin-left:100px;
        }
        .auto-style2 {
            margin-right: 4;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 606px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MASP" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal"  Width="900px" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
           <table class="auto-style1" border="1">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hinh") %>' Width="260px" Height="250px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" >
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button1" runat="server" BorderStyle="None" CssClass="auto-style2" Text="Chi Tiết" Width="148px" Height="21px" CommandArgument='<%# Eval("MASP") %>'  CommandName="chitiet" />
                        <asp:Button ID="Button2" runat="server" BackColor="#33CC33" BorderColor="#660066" ForeColor="#CC0000" Text="Đặt Hàng" Width="132px" />
                    </td>
                  
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QL_ShopGiayConnectionString5 %>" SelectCommand="SELECT * FROM [THONGTINDM] WHERE ([MADM] = @MADM)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MADM" QueryStringField="id" Type="String" />
        </SelectParameters>

    </asp:SqlDataSource>
</asp:Content>
