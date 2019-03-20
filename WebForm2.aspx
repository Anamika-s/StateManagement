<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       Name is : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br />
              Address is : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <br />
      
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
      
            <br />
            
            </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="batchcode" DataSourceID="SqlDataSource1" EnableViewState="False">
            <Columns>
                <asp:BoundField DataField="batchcode" HeaderText="batchcode" InsertVisible="False" ReadOnly="True" SortExpression="batchcode" />
                <asp:BoundField DataField="batchname" HeaderText="batchname" SortExpression="batchname" />
                <asp:BoundField DataField="course" HeaderText="course" SortExpression="course" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeeConnectionString %>" SelectCommand="SELECT * FROM [batch]"></asp:SqlDataSource>
    </form>
</body>
</html>
