<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Name : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <br />
            Enter Address : <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <br />
      
            <br />
            <asp:Button ID="btn" runat="server" Text ="Submit" OnClick="btn_Click"></asp:Button> <br />
      <asp:Button ID="Button1" runat="server" Text ="Submit using Cookies" OnClick="Button1_Click"></asp:Button> <br />
      <br />
            <asp:Button ID="Button2" runat="server" Text ="Submit using Session" OnClick="Button2_Click"></asp:Button>

        </div>
    </form>
</body>
</html>
