<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
        }

        .auto-style1 {
            font-size: xx-large;
        }

        .auto-style4 {
            color: #0081FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1280px; margin: 0 auto;">
            <span class="auto-style1"><span class="auto-style3"><strong>動画のアップロード</strong></span><strong> &gt; </strong><span class="auto-style4"><strong>コメント設定</strong></span><strong> &gt; 公開設定 &gt; 投稿内容の確認</strong></span><br class="auto-style3" />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="戻る" />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" GroupingText="プレミアム会員限定" Style="width: 1150px; background-color: #CCCCCC;">
                <div style="float: left;">
                    <strong>コメントの位置と演出</strong>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem Value="0" Selected="True">ノーマル (デフォルト)</asp:ListItem>
                        <asp:ListItem Value="1">上下</asp:ListItem>
                        <asp:ListItem Value="2">上</asp:ListItem>
                        <asp:ListItem Value="3">下</asp:ListItem>
                        <asp:ListItem Value="4">桜 (制作中)</asp:ListItem>
                        <asp:ListItem Value="5">雪 (制作中)</asp:ListItem>
                    </asp:RadioButtonList>
                    <div style="width: 640px; height: 360px;">
                        <div style="position: absolute; z-index: 2;">
                            <asp:Image ID="Image1" runat="server" Height="360px" Width="640px" />
                        </div>
                        <div style="position: absolute; z-index: 1;">
                            <video id="Video1" autoplay="" controls="" height="360" loop="" muted="" playinline="" src="uploaded/video.mp4" width="640">
                                <p>
                                    動画にはvideoタグをサポートしたブラウザが必要です。 
                                </p>
                            </video>
                        </div>
                    </div>
                    ※ミュートでプレビューしています。投稿すると音が出ます。
                </div>
                <div style="float: left; margin-left: 10px;">
                    <asp:Image ID="Image2" runat="server" Height="45px" ImageUrl="./ribbon01.png" />
                    <br />
                    <br />
                    <asp:Image ID="Image3" runat="server" Height="120px" ImageUrl="./bubble03.png" />
                    <br />
                    <br />
                    <asp:Image ID="Image7" runat="server" Height="60px" ImageUrl="./bubble07.png" />
                </div>
                <div style="clear: both;">
                    <br />
                    <strong>コメントのデフォルトカラー</strong>
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList4_SelectedIndexChanged">
                        <asp:ListItem Value="0" Selected="True">白 (デフォルト)</asp:ListItem>
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
                    </asp:RadioButtonList>
                </div>
                <br />
                <div style="float: left;">
                    <strong>コメントのデフォルトサイズ</strong><asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList5_SelectedIndexChanged1">
                        <asp:ListItem Value="0">小</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">中 (デフォルト)</asp:ListItem>
                        <asp:ListItem Value="2">大</asp:ListItem>
                    </asp:RadioButtonList>
                    <div style="width: 640px; height: 360px;">
                        <div style="position: absolute; z-index: 2;">
                            <strong id="form3">
                                <asp:Label ID="Label15" runat="server" Height="360px" Width="640px" BorderStyle="None"></asp:Label>
                                <br />
                            </strong>
                        </div>
                        <div style="position: absolute; z-index: 1;">
                            <video id="Video2" width="640" height="360" src="./uploaded/video.mp4" controls muted autoplay playinline loop>
                                <p>
                                    動画にはvideoタグをサポートしたブラウザが必要です。
                                </p>
                            </video>
                        </div>
                    </div>
                    ※ミュートでプレビューしています。投稿すると音が出ます。
                </div>
                <div style="float: left; margin-left: 10px;">
                    <asp:Image ID="Image4" runat="server" Height="45px" ImageUrl="./ribbon01.png" />
                    <br />
                    <br />
                    <asp:Image ID="Image5" runat="server" Height="60px" ImageUrl="./bubble04.png" />
                    <br />
                    <br />
                    <asp:Image ID="Image6" runat="server" Height="60px" ImageUrl="./bubble06.png" />
                </div>
                <div style="clear: both;">
                    <br />
                    <br />
                    <div style="float: left;">
                        <strong>コメントの鼓動</strong>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" AutoPostBack="True">
                            <asp:ListItem Selected="True" Value="0">オフ (デフォルト)</asp:ListItem>
                            <asp:ListItem Value="1">オン</asp:ListItem>
                        </asp:RadioButtonList>
                        <strong>
                            <br />
                            コメントの鼓動のBPM<br />
                            <asp:TextBox ID="TextBox7" runat="server" Width="25px">172</asp:TextBox>
                        </strong>BPM&nbsp; (デフォルト : 172BPM)<br />
                        <strong>
                            <br />
                            コメントの流れる速度<br />
                            <asp:TextBox ID="TextBox8" runat="server" Width="25px">1.0</asp:TextBox>
                        </strong>倍&nbsp; (デフォルト : 1倍)
                    </div>
                    <div style="float: left; margin-left: 10px;">
                        <asp:Image ID="Image9" runat="server" Height="45px" ImageUrl="./ribbon01.png" />
                        <br />
                        <br />
                        <asp:Image ID="Image8" runat="server" Height="180px" ImageUrl="./bubble10.png" />
                    </div>
                </div>
            </asp:Panel>
            <div style="clear: both;">
                <br />
                <asp:CheckBox ID="CheckBox7" runat="server" Text="NG共有機能の利用を許可する" Checked="True" />
                <br />
                <asp:CheckBox ID="CheckBox8" runat="server" Checked="True" Text="かんたんコメントエリアの表示を許可する" />
                <div style="margin-top: 40px; margin-bottom: 80px;">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="戻る" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="次へ (公開設定へ)" Style="margin-left: 80px;" />
                </div>
            </div>
    </form>
</body>
</html>
