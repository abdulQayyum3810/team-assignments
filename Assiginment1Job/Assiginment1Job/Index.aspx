<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Assiginment1Job.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>

        function expandColapse(id) {
            var div = document.getElementById(""+id);
            var img = document.getElementById("img" + id);
            if (div.style.display == "none") {
                div.style.display = "inline";
                img.src = "collapse.png"
            }
            else {
                div.style.display = "none";
                img.src = "expand.png"

            }
        }


    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="countryGrid" runat="server" AutoGenerateColumns="False" OnRowDataBound="countryGrid_RowDataBound" CellPadding="4" GridLines="Horizontal" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">

                <Columns>

                   <asp:TemplateField>

                       <ItemTemplate>
                           <a href="javascript:expandColapse('<%# Eval("id") %>');">
                               <img src="expand.png" border="0" id='img<%#Eval("id") %>' style="width:20px;height:20px"/>
                           </a>
                       </ItemTemplate>
                   </asp:TemplateField>
                    <asp:BoundField DataField="id" HeaderText="country ID" />
                    <asp:BoundField DataField="name" HeaderText="country Name" />
                    <asp:BoundField DataField="population" HeaderText="population" />


                    <asp:TemplateField>

                        <ItemTemplate>
                            <tr>
                                <td colspan="100%">
                                    <div id='<%# Eval("id") %>' style="display:none">
                                    <asp:GridView ID="cityGrid" runat="server" AutoGenerateColumns="false">
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="City id" />
                                            <asp:BoundField DataField="name" HeaderText="City name" />
                                            <asp:BoundField DataField="countryId" HeaderText="country id" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                                    </asp:GridView>
</div>
                                </td>


                            </tr>


                        </ItemTemplate>

                    </asp:TemplateField>


                </Columns>

                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />

            </asp:GridView>
        </div> 
    </form>
</body>
</html>
