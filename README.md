
# ながのケーキ（ECサイト）
リモートリポジトリ：patisserie<br>
https://github.com/webcamp-haikyu/patisserie/edit/master/README.md

# 背景
<strong> ながのケーキ（ECサイト）</strong><br>
⻑野県にある⼩さな洋菓⼦店「ながのCAKE」の商品を通販するためのECサイトです。<br>
元々近隣住⺠が顧客でしたが、昨年始めたInstagramから⼈気となり、全国から注⽂をいただけるようになりました。<br>
InstagramのDMやメールで通販の注⽂を受けておりましたが、情報管理の徹底化のもと管理機能を含んだ通販サイト開設に至りました。

* 通販では注⽂に応じて製作する受注⽣産型
* 現在通販での注⽂量は⼗分に対応可能な量のため、1⽇の受注量に制限は設けない
* 送料は1配送につき全国⼀律800円
* 友⼈や家族へのプレゼントなど、注⽂者の住所以外にも商品を発送できる
* ⽀払⽅法はクレジットカード、銀⾏振込から選択

# 機能一覧
## 顧客
* 顧客は会員登録、ログイン・ログアウト、退会ができる
* 会員のログインはメールアドレスとパスワードで⾏う
* 会員がログインしている状態かどうか、ページのヘッダーにユーザ名を表⽰することで判断が可能
* サイトの閲覧はログインなしにて可能
* カートへの商品追加はログインなしでは不可
* クレジットカード情報はシステム上保持しない
* 会員はマイページからユーザ情報の閲覧・編集、注⽂履歴の閲覧、配送先の閲覧・編集が可能
* 注⽂履歴⼀覧には下記の情報を表⽰<br>
		注⽂⽇　配送先　⽀払⾦額（商品合計＋送料）注⽂ステータス
* 注⽂履歴詳細には下記の情報を表示<br>
		注⽂⽇　配送先　⽀払⽅法　注⽂ステータス<br>
		商品の注⽂内容詳細（商品名、単価、個数、⼩計）　請求情報（商品合計、送料、⽀払⾦額）
* 商品は税込価格で表⽰

## 管理者
* 管理者⽤メールアドレスとパスワードでログイン（※管理者⽤メールアドレスとパスワードは事前にデータベースへ登録）
* 商品状態の売切表⽰を行う（新規追加、編集、販売停⽌）
* 商品情報<br>
		商品名　商品説明⽂　ジャンル　税抜価格　商品画像　販売ステータス
* 会員登録されているユーザ情報の閲覧、編集、退会処理
* ユーザの注⽂履歴の⼀覧・詳細を表⽰
* 注⽂履歴には注⽂ごとに下記の情報を表⽰<br>
		購⼊者　購⼊⽇　購⼊内容　請求額合計<br>
		配送先　注⽂ステータス　各注⽂商品の製作ステータス
* 注⽂ステータス、製作ステータスの更新
* 商品ジャンルは「有効」「無効」を設定<br>
		ジャンル⼀覧にて、無効に設定したジャンルは非表示、また無効になっているジャンルに紐付く商品も非表示となる

# 開発環境
 Rails 5.2.4.4<br>
 Version 3.12.6 (ruby 2.5.7-p206)

# 注意
ターミナル（またはコマンドプロンプト）で以下の作業を行った後、ローカルサーバーにアクセスしてご覧ください。
## インストール
$ git clone git@github.com:webcamp-haikyu/patisserie.git(SSH)<br>
or <br>
$ git clone https://github.com/webcamp-haikyu/patisserie.git (HTTPS) <br>
$ cd patisserie<br>
$ bundle install<br>
$ rails db:migrate<br>
$ rails db:seed<br>
$ rails s -b 0.0.0.0<br>
## テスト
【管理者ログイン情報】<br>
	password：something<br>
	email：name@name.com<br>

# 制作者
所属：DMM Web Camp 受講生<br>
チーム：webcamp-haikyu<br>
	片野 徹也  長澤 直貴<br>
	原 朋伽　  松永 実華

