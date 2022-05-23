<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Homeaspx.aspx.cs" Inherits="BTLWEB.Homeaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .auto-style1 {
            font-size: 16px;
            font-family: Cambria;
        }

        .auto-style2 {
            width: 100%;
        }

        td, th, input {
            text-align: center;
            padding: 5px;
            margin: 5px;
            vertical-align: top;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style1"><strong>DANH SÁCH CÁC ĐIỀU LUẬT<br />
            </strong></span>
            <asp:Button ID="btnAdd" runat="server" Text="Thêm các điều luật" OnClick="btnAdd_Click"/>
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="Horizontal" DataKeyNames="ID" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Chuong" HeaderText="Chương" />
                    <asp:BoundField DataField="NoidungChuong" HeaderText="Nội dung chương" />
                    <asp:BoundField DataField="Muc" HeaderText="Mục" />
                    <asp:BoundField DataField="NoidungMuc" HeaderText="Nội dung mục" />
                    <asp:BoundField DataField="Dieu" HeaderText="Điều" />
                    <asp:BoundField DataField="NoidungDieu" HeaderText="Nội dung điều" />
                    <asp:BoundField DataField="Khoan" HeaderText="Khoản" />
                    <asp:BoundField DataField="NoidungKhoan" HeaderText="Nội dung khoản" />
                    <asp:BoundField DataField="MucPhatDuoi" HeaderText="Mức phạt dưới" />
                    <asp:BoundField DataField="MucPhatTren" HeaderText="Mức phạt trên" />
                    <asp:TemplateField HeaderText="Sửa/Xoá">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" Text="Sửa" OnClick="btnEdit_Click" CommandArgument='<%# Eval("ID") %>' />
                            <asp:Button ID="btnDelete" runat="server" Text="Xoá" OnClick="btnDelete_Click" CommandArgument='<%# Eval("ID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
