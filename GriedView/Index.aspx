<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="GriedView.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="griedview1" runat="server" AutoGenerateColumns="false"  >
                <Columns >
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" />
                    <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtn" Text="select" runat="server" CommandArgument='<%#Eval("ProductId") %>'; OnClick="lnkbtn_Click"  ></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
