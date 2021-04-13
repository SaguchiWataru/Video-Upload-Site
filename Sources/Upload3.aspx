<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
            color: #000000;
        }

        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style5 {
            color: #000000;
        }

        .auto-style6 {
            color: #0081FF;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div style="width: 1280px; margin: 0 auto;">
            <div>
                <span class="auto-style1"><span class="auto-style3"><strong>動画のアップロード</strong></span><span class="auto-style5"><strong> </strong></span><strong>&gt; </strong><span class="auto-style5"><strong>コメント設定 &gt; </strong></span><span class="auto-style6"><strong>公開設定</strong></span><span class="auto-style5"><strong> &gt; 投稿内容の確認</strong></span></span><strong><br class="auto-style1" />
                </strong>
                <br />
                <asp:Button ID="Button5" runat="server" OnClick="Button4_Click" Text="戻る" />
                <br />
                <br />
                <strong>公開範囲</strong><br />
                <asp:DropDownList ID="DropDownList3" runat="server" Width="200px">
                    <asp:ListItem Value="0">公開</asp:ListItem>
                    <asp:ListItem Value="1">非公開</asp:ListItem>
                    <asp:ListItem Value="2">コミュニティ専用</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <strong>公開日時</strong><br />
                <asp:CheckBox ID="CheckBox3" runat="server" Text="タイマーON" />
            </div>

            <div style="float: left;">
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                <asp:TextBox ID="TextBox4" runat="server" Width="25px"></asp:TextBox>
                時<asp:TextBox ID="TextBox5" runat="server" Width="25px"></asp:TextBox>
                分
            </div>
            <div style="float: left; margin-left: 10px;">
                <asp:Image ID="Image1" runat="server" Height="135px" ImageUrl="./bubble12.png" />
            </div>
            <div style="clear: both;">
                <br />
                <asp:CheckBox ID="CheckBox4" runat="server" Text="コミュニティーに動画を登録する" />
            </div>
            <br />
            <strong>表示設定</strong><br />
            <asp:CheckBox ID="CheckBox5" runat="server" Text="投稿動画一覧に表示する" Checked="True" style="margin-right: 40px;"/>
            チェックを外すと、他の人から見た投稿動画一覧に表示されなくなります<br />
            <br />
            <strong>許可設定</strong><br />
            <asp:CheckBox ID="CheckBox6" runat="server" Text="一般会員のタグ編集を許可する" Checked="True" />
            <br />
            <asp:CheckBox ID="CheckBox8" runat="server" Text="ブログ等の外部サイトへの動画プレーヤー貼り付けを許可する" Checked="True" />
            <br />
            <asp:CheckBox ID="CheckBox9" runat="server" Text="広告による宣伝を許可する" Checked="True" />
            <br />
            <asp:CheckBox ID="CheckBox10" runat="server" Text="生放送による紹介を許可する" Checked="True" />
            <br />
            <asp:CheckBox ID="CheckBox11" runat="server" Text="ユーザーによるタイトルと動画説明文の翻訳を許可する" Checked="True" />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server">NG共有機能</asp:LinkButton>
            &nbsp;|
        <asp:LinkButton ID="LinkButton2" runat="server">広告</asp:LinkButton>
            &nbsp;|
        <asp:LinkButton ID="LinkButton3" runat="server">生放送</asp:LinkButton>
            <br />
            <br />
            <strong>使用楽曲の登録</strong><br />
            <asp:Button ID="Button2" runat="server" Text="楽曲を追加" />
            <br />
            <br />
            <strong>「いいね！」へのお礼メッセージ<br />
            </strong>
            <asp:CheckBox ID="CheckBox2" runat="server" Text="この動画に「いいね！」へのお礼メッセージを表示する" style="margin-right: 40px;"/>
            チェックした動画に「いいね！」へのお礼メッセージが表示されます<br />
            <br />
            <strong>スクリプトの設定</strong><br />
            動画終了後に次の動画に移動<br />
            https://www.*********.jp/watch/<asp:TextBox ID="TextBox6" runat="server" placeholder="例: sm252525"></asp:TextBox>
            <div style="margin-top: 40px; margin-bottom: 80px;">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="戻る" />
                <asp:Button ID="Button3" runat="server" Text="次へ (投稿内容の確認)" OnClick="Button3_Click" Style="margin-left: 80px;" />
            </div>
        </div>
    </form>
</body>
</html>
