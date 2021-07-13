<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TableList.aspx.cs" Inherits="DataBinding.TableList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DataBind</title><style>
 .a{
 margin: auto;
 width: 50%;
 background-color: lightblue;
 height:300px;
 }
                               #form1 {
                                   height: 358px;
                               }
 </style>
</head>
<body>
 <form id="form1" runat="server">
 <div class="a"><div class="b">
 <center>
 <br /><br />
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-6FSF5UG\SQLEXPRESS01 %>" SelectCommand="Select name from 
sys.tables"></asp:SqlDataSource>
 List of Table :
 <asp:DropDownList ID="DropDownList1" runat="server"
DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
 </asp:DropDownList>
 <br /><br />
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show 
Data" />
 
 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-6FSF5UG\SQLEXPRESS01;Initial Catalog=FYMCA_SEM2;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
 <br /><br />
 <asp:GridView ID="GridView1" runat="server" >
 </asp:GridView>


 <br /><br />
     
     <br/>
     
     <br/>
 </center>
 </div></div>
    </form>
</body>
</html>
