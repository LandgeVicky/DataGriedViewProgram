<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="GridViewDatatable.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link  href="Content/bootstrap.min.css" rel="stylesheet" />

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- DataTables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">

    <!-- DataTables JS -->
    <script type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#<%=GridView1.ClientID%>').DataTable();
        });
    </script>

</head>
<body>
    <form id="form2" runat="server">
        <div class="container text-center">
            <div class="bg-warning rounded mt-2">
                <h2>GridView Using jQuery DataTable</h2>
            </div>
            <asp:GridView runat="server" ID="GridView1" AutoGenerateColumns="false" CssClass="table table-hover bg-warning">
                <Columns>
                    <asp:BoundField DataField="ProductId" HeaderText="ProductId" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" />
                    <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
