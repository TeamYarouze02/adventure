;****************************************
;「グリッソムとアイディーン（仮）」
;	Date:2018/11/12
;	Ver:0.00
;	Author:yarouze
;****************************************

*start

[cm]
[clearfix]
[start_keyconfig]

;tempra_cameraはlayopt使ってレイヤーのセッティングをしないと表示されない。
[layopt layer=base visible=true]
[layopt layer=0    visible=true]
[layopt layer=1    visible=true]
[layopt layer=2    visible=true]

;背景をベースレイヤーに表示
[bg layer=base storage=BG00.png time=100]

;プラグインロード
[plugin name=tempura_camera layer=base,0,1,2 manager=true]

;メニューボタンの表示
;@showmenubutton

;メッセージウィンドウの設定
;message0:ナレーター
;message1:吹き出し（の予定）
;message2:吹き出し（の予定）
;message3:吹き出し（の予定）
;message4:"Score:"部表示レイヤー
;message5:スコア表示レイヤー
;massage6:回答可能回数表示

[position layer=message0 left=20 top=100 width=680 height=256 page=fore visible=true]
[position layer=message1 left=20 top=100 width=680 height=256 page=fore visible=true]
[position layer=message2 left=20 top=100 width=680 height=256 page=fore visible=true]
[position layer=message3 left=20 top=100 width=680 height=256 page=fore visible=true]
[position layer=message4 left=10 top=10 width=720 height=100 page=fore visible=true opacity=0]
[position layer=message5 left=100 top=10 width=720 height=100 page=fore visible=true opacity=0]
[position layer=message6 left=500 top=1100 width=720 height=100 page=fore visible=true opacity=0]

;文字が表示される領域を調整
[position layer=message0 page=fore margint=60 marginl=20 marginr=20 marginb=10]
[position layer=message1 page=fore margint=60 marginl=20 marginr=20 marginb=10]
[position layer=message2 page=fore margint=60 marginl=20 marginr=20 marginb=10]
[position layer=message3 page=fore margint=60 marginl=20 marginr=20 marginb=10]
[position layer=message4 page=fore margint=0 marginl=0 marginr=0 marginb=0]
[position layer=message5 page=fore margint=0 marginl=0 marginr=0 marginb=0]

;"Score:"部表示
[current layer=message4]
[layopt layer=message4 visible=true]
Score:

;回答可能回数表示
[current layer=message6]
[layopt layer=message6 visible=true]
[emb exp="sf.comm"]

;スコア表示
[current layer=message5]
[layopt layer=message5 visible=true]
[emb exp="sf.score"]

[current layer=message0]
;一応ナレーター
[layopt layer=message0 visible=true]

テスト開始。[p]

;レイヤを指定してアニメーション
[anim layer=message0 top="-=270" effect=easeOutBack time=500 ]

;アニメを待つ
[wa]

[layopt layer=message1 visible=true]
[current layer=message1]
吹き出しのように見せるてすと！[p]

[anim layer=message0 top="-=270" effect=easeOutBack time=500 ]
[anim layer=message1 top="-=270" effect=easeOutBack time=500 ]

[layopt layer=message2 visible=true]
[current layer=message2]

吹き出しは上へ上へと持ち上げられる感じです。
テキストエリアは吹き出し画像にします。[p]

スコアを加算してみる。[p]

[current layer=message5]
[eval exp="sf.score=sf.score + 250"]
[er]
[emb exp="sf.score"]

;レイヤー開放してみる。
[current layer=message2]
テキストレイヤーを一旦開放します。[p]
[freeimage layer=message0]
[freeimage layer=message1]
[freeimage layer=message2]




;キャラクターの名前が表示される文字領域
[ptext name=chara_name_area layer=message1 color=black size=30 x=50 y=140]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;grissom:グリッソム教授
[chara_new name=grissom storage="chara/grissom/g_normal.png" jname=グリッソム教授]

;ideen:アイディーン
[chara_new name=ideen storage="chara/ideen/i_normal.png" jname=アイディーン]

[layopt layer=message3 visible=true]
[current layer=message3]

;tempura_cameraのZ深度
[tcamera_setting z=100,80,70,60 zoom=1.4,1,1,1 manager=true]

[jump target=*test]
#
ここはヨーロッパの小国[p]
「ネロリドール王国」[p]

#
地図にものらないほど小さなこの国だが、多くの国と隣接し―[p]

#
数多の国の人々が行き交う重要な交易の場となっていた。[p]

#
そんな、数々の言語が飛び交うこの国一番の「言語学者」…[p]

#
それが[p]
グリッソム教授なのであ～～る！[p]

*test

;キャラクター登場
[chara_show layer=1 name=grissom left=300 top=570 time=500]
[chara_show layer=0 name=ideen left=100 top=570 time=500]


;文字が表示される領域を調整
[position layer=message1 page=fore margint=50 marginl=20 marginr=20 marginb=10]

;メッセージウィンドウの表示
;こちらは吹き出しの予定
[layopt layer=message3 visible=true]

;レイヤー変更は↓これです。指定してあげてください。数時間悩んだわ！
[current layer=message3]

;カメラプラグインでズームしてみる。
[tcamera name=grissom zoom=1.5]


#【グリッソム教授】
なになに…ネロリドール王国幕僚長サイモン元帥閣下は－[p]
本日９月２１日よりヨギギ自治領にて首脳会談に出席…へぇ。[p]

#【グリッソム教授】
ヨギギ語って声量で言葉の意味が変わっちゃうから、通訳の人喉ガラガラになっちゃうんだよね～。[p]

#
<地面に置かれた本に足を取られる>[p]

#【グリッソム教授】
ゴわ！[p]

[quake count=6 time=300 hmax=0 vmax=20]

#
[font size=90]
ドドドドガガガバァッ！[p]
[resetfont]

#【グリッソム教授】
ごおおお?ぅあーーーッ！…圧・死・寸・前ンッ！[p]

#【グリッソム教授】
誰かを呼んで助けてもらわなきゃ！[p]
『ひと』を『よぶ』んだ！[p]

[tcamera name=ideen zoom=1.5]

[glink  color="blue"  storage="scene1.ks"  size="20"  x="160"  width="400"  y="300"  text="よぶ　ひと"  target="*selectinterest"  ]
[glink  color="blue"  storage="scene1.ks"  size="20"  x="160"  width="400"  y="370"  text="よぶ　ひと"  target="*selectinterest"  ]
[glink  color="blue"  storage="scene1.ks"  size="20"  x="160"  width="400"  y="440"  text="よぶ　ひと"  target="*selectinterest"  ]
[s]

*selectinterest

;問題番号は#、00は章の番号、_00は問題数
;#01_01

;正解（解答が正解ならばここから。不正解だとその下にある不正解へ）

#【グリッソム教授】
アーーーイディーーーーン！！[p]

;<bgm:アイディーンのテーマ>
#【アイディーン】
♪才色兼備でそれでいて[p]
	♪コスプレ大好きメイドなの[p]
♪変幻自在のポケットで[p]
	♪マヌケな教授のお手伝い[p]
♪その名はその名は[p]
♪アイディーン！　だべっ♥[p]

;不正解（解答が不正解だといくつかのヒントを与える）

#【グリッソム教授】
やばい眼の前真っ白になってきたぞ…！[p]
落ち着け！落ち着いて…。[p]
…そうだ！うちにはメイドさんがいたんだ！[p]
『めいど』を『よぶ』んだ！[p]


[tcamera name=grissom zoom=1.5]
#【グリッソム教授】
だべっ♥[p]
じゃないよ！早く助けてよ！アイディーン！[p]

#【アイディーン】
Oh…[p]

<本の隙間から出た教授の髪の毛（寝癖）を掴んで思い切り引っ張る>[p]

#【アイディーン】
どぉおおお～りゃァ～っッ！必殺！大・雪・山・落ぉとしいぃ～！！！[p]

;SE:轟音
<ドドドドドド…>[p]
<積み上がった本が崩れる音とともに教授が出てきた>[p]

#【グリッソム教授】
はぁ、はぁ…[p]
アイディーンありがとう～。[p]
死ぬかと思った…。[p]

<気を抜いたところで、崩れかけの山から最後に本が落ちてきた>[p]

;SE:コン！

#【グリッソム教授】
イテ！[p]
…なんだよもう…？[p]
…あれ？[p]

#【アイディーン】
？[p]
どうすたんだせんせ？[p]

#【グリッソム教授】
あ！これ！[p]
ずっと探してたんだ！この日記！なんて偶然だ！[p]
懐かしい…ジャン君、あれからどうしてるかな…。[p]

#【アイディーン】
あ～！あのこ…。[p]

;SE:玄関の呼び鈴：リンリン…

#【アイディーン】
いげね！お客さまだ。[p]
は～～い！[p]

#【グリッソム教授】
ぶちまけちゃった本の整理はアイディーンに押し付けるとして、ちょっとこの日記を見返してみよう。[p]
;#01_02

;正解
<教授はぱらぱらとページをながめた。[p]
教授が手にとった冊子の表紙には「日記 １８５３」とある>[p]
もう三年も前になるのか…ということはジャン君は…。[p]

<アイディーンがすぐ戻ってきて壁から首だけ出して>[p]

;不正解
せっかく見つけたんだ。この『にっき』を『よむ』かな…[p]
よし！出てきた『さっし』を『ひらく』としよう！[p]

#【アイディーン】
せんせぇ！サイモンさんて方がお見えですだ。[p]
しってるが？[p]

#【グリッソム教授】
サイモン？…サイモンさいもん…知らないなぁ…まあいいや、出てみよう。[p]

おっと。これも忘れちゃいけない。[p]
<さっきまで読んでいた新聞を拾って、後ろのポケットにねじ込む>[p]

#【グリッソム教授】
<ドアを開けると身長が2メートルはあると思われるいかつい男性が立っていた>[p]
（ん？…どこかで見た顔だな。最近見たぞ。うん、さっき見た気がする）[p]

#【？？？？？？】
初めまして、グリッソム教授は君かね？[p]

#【グリッソム教授】
はい。私ですが…。[p]

#【サイモン元帥】
私はネロリドール王国統合幕僚本部長兼宰相元帥、サイモン・ダイツじゃ。[p]

#【グリッソム教授】
え！？[p]
サイモンって…あのサイモン閣下？[p]

#【サイモン元帥】
そうじゃよ。[p]
…とはいっても簡単に信じてはもらえんじゃろうな。最近はわしを騙る輩もふえとる。[p]

#【グリッソム教授】
そうだ！さっきまで見ていた『あれ』に閣下の写真が載ってたな。[p]

;#01_03

;正解
#【グリッソム教授】
新聞の写真まんまだ。[p]
これで別人なら閣下の影武者になった方が逆にお金になる！[p]

;不正解
#【グリッソム教授】
後ろポケットに『あれ』をもってるんだ…。[p]
毎朝届く『あれ」にサイモン閣下の写真が載ってたよな。[p]
じつは今ちょうど『しんぶん』が僕の後ろポケットにあるんだよね…。[p]
『しんぶん』を『よむ』と、この人がサイモン閣下なのか確認できそうだ。[p]

#【サイモン元帥】
ふふふ…噂通り面白い男よ。[p]
まぁ、わしに影なんぞ必要ないがな。[p]

#【グリッソム教授】
ゔしゅぅ～！[p]
<かっこつけたけど僕は口笛が吹けない>[p]

#【サイモン元帥】
突然の質問ですまないが、君達は3年前ジャンという少年と接触したね？[p]

#【グリッソム教授】
え゛！ぺリア地区のジャン君のことですか！？[p]
今ちょうど日記を見ていましたが…どうしてそれを知っているのですか？[p]

#【サイモン元帥】
やはりな…また突然ですまないが、少しわしの話に付き合ってくれんか？[p]
本物のサイモンでないと、こんな話はできないじゃろう。[p]

#【グリッソム教授】
え、えぇ。[p]
（そうだ、立ち話も何なので居間で話そう）[p]

#01_04
;正解
#【グリッソム教授】
…あ、中へどうぞどうぞ！[p]

;不正解
#【グリッソム教授】
立ち話でできるほど簡単な話じゃなさそうだな…この話は。[p]
ここじゃなんだな。[p]
閣下をずっと立たせてるのも心苦しいな。[p]
彼を家の中に『いれる』か。[p]
『さいもん』閣下に立ち話をさせているのも気が引けるなあ…。[p]

#【サイモン元帥】
ありがとう。[p]

#【グリッソム教授】
あれ？でも今日はヨギギで首脳会議だって新聞に…。[p]

#【サイモン元帥】
ヨギギ自治領の総督、ありゃわしの元部下じゃ。[p]
やつが塹壕で小便を垂らしとった頃からよぉく知っとる。[p]
まぁ何年でも待ってくれるじゃろ。ほあっはっはっは！[p]

#【グリッソム教授】
ゔしゅぅ～！[p]
<かっこつけたけど僕は口笛が吹けない>[p]

;グリッソム教授宅・居間へ場面転換
<アイディーンがミントクッキーとアールグレイを持ってくる>[p]

#【グリッソム教授】
この子の紅茶とクッキーは絶品ですよ。どうぞどうぞ。[p]

#【サイモン元帥】
ありがとう。君がアイディーンだね？[p]

#【アイディーン】
お、おれの事、知ってるっすか？[p]
;驚く顔

#【サイモン元帥】
今回の訪問は君にも関係のある話じゃ。[p]

#【アイディーン】
へっ！？おれも？[p]

#【サイモン元帥】
そうじゃ。だから君もわしの話を聞いておくれ。[p]

#【アイディーン】
へ、へぇ…。[p]

#【サイモン元帥】
本題に入る前に、君たち二人が3年前ジャンと会って何をしたか教えてもらえないだろうか？[p]

#【グリッソム教授】
そんなこと言って～この家まで来るってことは全部知ってたりするんじゃないんですか？ははは…。[p]

#【サイモン元帥】
ふふん…まぁな。[p]
じゃが、知らない事も多いじゃろう。[p]

#【グリッソム教授】
閣下からのお願いですからね。[p]
断れる人は国王だけですよ。[p]

#【サイモン元帥】
感謝する。[p]

#01_05
#【グリッソム教授】
そうだ。閣下と話すには『あれ』が必要だな…。[p]
『あれ』を『もってくる』としよう…。[p]
サイモン閣下と『にっき』を見ながら話をしよう。[p]
『とりにいく』か、『あれ』を。[p]
さっきの『にっき』を『さがす』んだ。[p]

;正解
#【グリッソム教授】
では、日記を持ってき…。[p]

#【アイディーン】
ほい、せんせ。[p]
<横にいたアイディーンが先ほどの日記を持ってきてくれていた>[p]

#【グリッソム教授】
さすが。[p]
 
<朝の陽ざしが窓から差し込み、温かい居間の中央で皮のソファーに座った三人[p]
日記と記憶を元に3年前に起こった不思議な事件を思い返す。各々のことばとイメージで>[p]
 
#【グリッソム教授】
僕がジャンと初めてことばを交わしたのは、1853年10月4日に鳴った一本の電話でした…[p]

<グリッソム教授は語り始めた…>[p]


;-----------一章終わり。
*tyranobuilder

[cm]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true;
[font color-"red"]
「ティラノビルダー」
[resetfont]
という無料の開発ツールもあります。[p]

[image layer=1 page=fore visible=true top=10 left=50 width=560 height=400  storage = builder.png]

これは、グラフィカルな画面でノベルゲームを作れるツールです[p]
スクリプトが苦手な人でもゲーム制作を行うことができるからぜひ試してね。[p]
[freeimage layer=1]

@jump target=button_link

[s]
*example
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
これまで、ティラノスクリプトを使って沢山のゲームが作成されています。[p]
一部の制作事例を公式サイトに乗せているのでよければ確認してくださいね。[p]

[iscript]
window.open("http:;tyrano.jp/home/example");
[endscript]

@jump target=button_link

[cm]
[s]

*tech
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
このサンプルでは、ティラノスクリプトのごく一部の機能しか紹介できていません[p]
さらに出来ることを知りたい場合、スクリプトを丸ごとダウンロードできるようになっているので[p]
そのサンプルを触ってみることをオススメします！[p]

[iscript]
window.open("http:;tyrano.jp/home/demo");
[endscript]

@jump target=button_link


*info
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
ティラノスクリプトでわからないことがあったら[p]
公式掲示板で質問したり、Wikiなどもありますので参考にしてみてください[p]
@jump target=button_link

*tagref
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
タグは詳細なリファレンスページが用意されています。[p]
このページでさらに詳細な使い方を身につけてください[p]

[iscript]
window.open("http:;tyrano.jp/home/tag");
[endscript]

@jump target="*button_link"

[s]