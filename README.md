# Azureを使って、ニコニコ動画の動画投稿ページのプロトタイプ(改善案)を作ってみた  
作成した動画投稿サイトは以下からアクセスできます。稀に若干読み込みに時間がかかる時があります。  
[https://saguchi-wataru.azurewebsites.net/video-upload](https://saguchi-wataru.azurewebsites.net/video-upload)  

## 主な新機能一覧

* ヘビーユーザー向けに、WAVE形式の音声ファイルもアップロードできるようにしました。

* ボカコレのように、「素材・プロジェクトファイル・STEMデータ (ZIPファイルのみ)」をアップロードできるようにしました。

* コメントの位置や演出を指定できるようにしました。

* コメントのデフォルトの色とサイズを指定できるようにしました。

* コメントの流れる速さを変更できるようにしました。

* コメントを投稿する際に、色と位置を別々のプルダウンメニューから選べるようにしました。

* 投稿した動画の動画ファイルを、視聴者がダウンロードできるようにしました。(任意で機能の有効無効を切り替えられるようにする予定です)

* 投稿した動画のサムネイルファイルを、視聴者がダウンロードできるようにしました。(任意で機能の有効無効を切り替えられるようにする予定です)

* 投稿した動画の音声ファイルを、視聴者がダウンロードできるようにしました。(任意で機能の有効無効を切り替えられるようにする予定です)

* 投稿した動画の素材・プロジェクトファイル・STEMデータを、視聴者がダウンロードできるようにしました。(任意で機能の有効無効を切り替えられるようにする予定です)

## 今後作る予定の機能

* カレンダーで過去の日付を選択できないようにする

* コメントレンダラーを作成する

* ユーザーログインページを作成する

* 投稿された動画一覧ページを作成する

* 28MBを超えるファイルのアップロードに対応するようにする

* 動画のタイトルを入力すると、おすすめのジャンルとタグを提案するようにする。(PythonとKerasを用いた深層学習で、学習モデルを作成しました。[https://github.com/SaguchiWataru/Deep_learning_of_titles_and_tags_using_Keras](https://github.com/SaguchiWataru/Deep_learning_of_titles_and_tags_using_Keras))

* コメントを入力すると、おすすめの色を提案するようにする。(PythonとKerasを用いた深層学習で、学習モデルを作成しました。[https://github.com/SaguchiWataru/Deep_learning_on_comments_and_colors](https://github.com/SaguchiWataru/Deep_learning_on_comments_and_colors))

## 1ページ目
![ページ1](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page01.png)

## 2ページ目
![ページ2](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page02.png)

## 3ページ目
![ページ2](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page03.png)

## 4ページ目(1枚目)
![ページ4-1](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page04-1.png)

## 4ページ目(2枚目)
![ページ4-2](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page04-2.png)

## 5ページ目
![ページ5](https://raw.githubusercontent.com/SaguchiWataru/Video-Upload-Site/main/Sources/page06.png)


## 最後に  

このリポジトリをご閲覧いただきありがとうございます。  
もしも、このプロジェクトに興味を持って頂けた方がいらっしゃったら幸いです。  

最近は、AtCoderというプログラミングコンテストに毎週参加しています。  
Rating最高値は311です。  
コンテスト実績：[https://atcoder.jp/users/K019C1053](https://atcoder.jp/users/K019C1053)  
保有資格は、基本情報技術者試験です。  
2023年3月卒業予定です。  
