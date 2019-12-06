<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBSNoteList.aspx.cs" Inherits="UsersManager.BBSNoteLIst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%--    <link href="css.css" rel="stylesheet" />--%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align:left">
                留言板</div>
            <hr />
            <asp:Repeater ID="repBBSNote" runat="server" DataSourceID="linqBBS">
                <HeaderTemplate>
                    <table class="table">
                        <tr>
                            <th style="width:45%">标题</th>
                            <th style="width:15%">发表人</th>
                            <th>发表时间</th>
                            <th></th>
                        </tr>
                    </table>
                </HeaderTemplate>
               <%-- <ItemTemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblSubject" runat="server" Text='<%# Eval("bnSubject") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Users.uName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("bnAddTime") %>' />
                        </td>
                        <td><a href='BBSAnswerList.aspx?id=<%# Eval("bnID") %>'>查看</a></td>
                    </tr>
                </ItemTemplate>--%>
                <AlternatingItemTemplate>
                    <tr class="title">
                        <td>
                            <asp:Label ID="lblSubject" runat="server" Text='<%# Eval("bnSubject") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Users.uName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("bnAddTime") %>' />
                        </td>
                        <td><a href='BBSAnswerList.aspx?id=<%# Eval("bnID") %>'>查看</a></td><br /><br />
                    </tr>
                </AlternatingItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <asp:LinqDataSource ID="linqBBS" runat="server" ContextTypeName="Message_Board.BBSDataContext" EntityTypeName="" TableName="BBSNote">
            </asp:LinqDataSource>
            <div style="text-align:left;">
                主题：<asp:TextBox ID="txtbnSubject" runat="server"></asp:TextBox>
                <br />
                内容：<asp:TextBox ID="txtbnContent" runat="server" Height="85px" TextMode="MultiLine" Width="460px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="留言" />
            </div>
        </div>
    </form>
</body>
</html>
