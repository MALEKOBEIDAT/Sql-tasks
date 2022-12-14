<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ado_tasks.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">


</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>

            <br />
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

          <br />

            cuntry<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                                      <br />

            <asp:Label ID="Label4" runat="server" Text="phone"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                          <br />
            <label> Image: </label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
                                      <br />


            <asp:Button ID="Button1" runat="server" Text="save" OnClick="Button1_Click" />


        </div>
    </form>
</body>
</html>
