<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload6.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #999999;
        }

        .auto-style2 {
            color: #0081FF;
        }

        .auto-style3 {
            color: #000000;
            font-size: xx-large;
        }

        .auto-style4 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1800px; margin: 0 auto; margin-bottom: 80px;">
            <div style="text-align: center">
                <span class="auto-style3"><strong>投稿が完了しました！<asp:Image ID="Image2" runat="server" Height="90px" ImageUrl="./party_cracker_kamifubuki.png" /></strong></span>
                <br />
                <span class="auto-style4">※このWebページはテスト用のため、投稿した動画は次回ご利用時に自動で削除されます。</span><br />
            </div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" Style="font-weight: 700; font-size: xx-large;"></asp:Label>
            <div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left;">
                        <asp:Image ID="Image1" runat="server" Height="52px" Width="52px" />
                    </div>
                    <div style="float: left; margin-right: 10px; color: #000000;">
                        <asp:Label ID="Label10" runat="server" Text="テストユーザー" Style="color: #0081FF;"></asp:Label>
                        <span class="auto-style2">さん</span><br />
                    </div>
                </div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">投稿日時</span><br class="auto-style1" />
                        <asp:Label ID="Label5" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                    </div>
                </div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">再生数</span><br class="auto-style1" />
                        <asp:Label ID="Label9" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                        <br />
                    </div>
                </div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">コメント数</span><br class="auto-style1" />
                        <asp:Label ID="Label6" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                        <br />
                    </div>
                </div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">マイリスト数</span><br class="auto-style1" />
                        <asp:Label ID="Label7" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                        <br />
                    </div>
                </div>
                <div style="float: left; border-right: solid; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">ジャンル</span><br class="auto-style1" />
                        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                    </div>
                </div>
                <div style="float: left; height: 68px; color: #999999;">
                    <div style="float: left; margin: 10px;">
                        <span class="auto-style1">ランキング最高順位</span><br class="auto-style1" />
                        <asp:Label ID="Label8" runat="server" Text="Label" CssClass="auto-style1"></asp:Label>
                    </div>
                </div>
            </div>
            <div style="clear: both; margin-top: 20px; margin-bottom: 10px;">
                <div>
                    <asp:Button ID="Button1" runat="server" Text="タグ編集" Style="margin-right: 20px;" />
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div style="clear: both;">
                <asp:Panel ID="Panel1" runat="server" GroupingText="プレミアム会員のみダウンロード可能" Style="width: 1280px; margin-bottom: 10px;">
                    <div style="float: left;">
                        <div style="float: left; margin-right: 20px; margin-bottom: 20px;">
                            <span class="auto-style1">動画ファイル (mp4ファイル)</span><br class="auto-style1" />
                            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:Button ID="Button6" runat="server" Text="ダウンロード" OnClick="Button6_Click" />
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left; margin-right: 20px; margin-bottom: 20px;">
                            <span class="auto-style1">サムネイル (JPEGファイル)</span><br class="auto-style1" />
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:Button ID="Button7" runat="server" Text="ダウンロード" OnClick="Button7_Click" />
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left; margin-right: 20px; margin-bottom: 20px;">
                            <span class="auto-style1">音声ファイル (WAVEファイル)</span><br class="auto-style1" />
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:Button ID="Button3" runat="server" Text="ダウンロード" OnClick="Button3_Click" />
                        </div>
                    </div>
                    <div style="float: left;">
                        <div style="float: left; margin-right: 20px; margin-bottom: 20px;">
                            <span class="auto-style1">素材・プロジェクトファイル・STEMデータ (ZIPファイル)</span><br class="auto-style1" />
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                            <br />
                            <asp:Button ID="Button4" runat="server" Text="ダウンロード" OnClick="Button4_Click" />
                        </div>
                    </div>
                </asp:Panel>
            </div>
            <div style="clear: both; float: left;">
                <video id="Video1" height="480" src="./uploaded/video.mp4" controls muted autoplay playinline loop>
                    <p>
                        動画にはvideoタグをサポートしたブラウザが必要です。
                    </p>
                </video>
            </div>

            <div style="float: left; margin-left: 10px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EnableModelValidation="True" DataKeyNames="postDate" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="postDate" HeaderText="投稿日時" ReadOnly="True" SortExpression="postDate" />
                        <asp:BoundField DataField="text" HeaderText="コメント" SortExpression="text" />
                        <asp:BoundField DataField="timecode" HeaderText="タイムコード" SortExpression="timecode" />
                        <asp:BoundField DataField="color" HeaderText="色" SortExpression="color" />
                        <asp:BoundField DataField="position" HeaderText="位置" SortExpression="position" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:commentListConnectionString %>" DeleteCommand="DELETE FROM [comments] WHERE [postDate] = @postDate" SelectCommand="SELECT * FROM [comments]"></asp:SqlDataSource>
            </div>

            <div style="margin-bottom: 5px; clear: both;">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="コメントを入力してください" Style="width: 775px;"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="投稿" Style="color: #FFFFFF; font-weight: 700; background-color: #0081FF" Width="60px" OnClick="Button2_Click1" />
            </div>
            <div>
                色<asp:DropDownList ID="DropDownList1" runat="server" Style="margin-left: 5px; margin-right: 20px">
                    <asp:ListItem Value="0" Selected="True">白</asp:ListItem>
                    <asp:ListItem Value="1">赤</asp:ListItem>
                    <asp:ListItem Value="2">ピンク</asp:ListItem>
                    <asp:ListItem Value="3">オレンジ</asp:ListItem>
                    <asp:ListItem Value="4">黄色</asp:ListItem>
                    <asp:ListItem Value="5">緑</asp:ListItem>
                    <asp:ListItem Value="6">水色</asp:ListItem>
                    <asp:ListItem Value="7">青</asp:ListItem>
                    <asp:ListItem Value="8">紫</asp:ListItem>
                    <asp:ListItem Value="9">黒</asp:ListItem>
                    <asp:ListItem Value="10">カラフル</asp:ListItem>
                </asp:DropDownList>
                位置<asp:DropDownList ID="DropDownList2" runat="server" Style="margin-left: 5px; margin-right: 20px" Height="16px">
                    <asp:ListItem Value="0">上</asp:ListItem>
                    <asp:ListItem Value="1" Selected="True">通常</asp:ListItem>
                    <asp:ListItem Value="2">下</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="その他のコマンドを入力してください(省略可)" Style="width: 320px;"></asp:TextBox>
            </div>
            <div style="margin-top: 15px; margin-bottom: 15px;">
                動画の説明<br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <div style="text-align: center">
                    <asp:Button ID="Button5" runat="server" OnClick="Button2_Click" Text="続けて動画を投稿する" Style="margin-top: 100px; width: 200px;" />
                </div>
            </div>

        </div>
    </form>
</body>
</html>
