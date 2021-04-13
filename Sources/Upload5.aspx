<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload5.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style2 {
            text-align: center;
            width: 1150px;
            margin: 0 auto;
        }

        .auto-style3 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <span class="auto-style1">投稿が完了しました</span><br class="auto-style1" />
            <br />
            <asp:Image ID="Image1" runat="server" Height="180px" ImageUrl="./party_cracker_kamifubuki.png" Style="margin-bottom: 40px;" />
            <div style="margin-bottom: 40px;">
                <asp:Button ID="Button3" runat="server" Text="投稿した動画を見る" OnClick="Button3_Click" Style="margin: 10px; width: 200px;" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="続けて動画を投稿する" Style="margin: 10px; width: 200px;" />
            </div>
            <span class="auto-style3">※このサイトはテスト用のため、投稿した動画は次回ご利用時に自動で削除されます。</span><br class="auto-style3" />
            <div style="margin-top: 500px;">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="トップに戻る" Style="margin: 10px; width: 200px;" />
                <asp:Button ID="Button4" runat="server" Text="マイページに戻る" Style="margin: 10px; width: 200px;" />
            </div>
        </div>
    </form>
</body>
</html>
