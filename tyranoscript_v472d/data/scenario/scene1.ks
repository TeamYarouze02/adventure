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

[position layer=message0 left=20 top=100 width=680 height=256 page=fore visible=true]
[position layer=message1 left=20 top=120 width=680 height=256 page=fore visible=true]
[position layer=message2 left=20 top=120 width=680 height=256 page=fore visible=true]
[position layer=message3 left=20 top=120 width=680 height=256 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint=60 marginl=20 marginr=20 marginb=10]
[position layer=message3 page=fore margint=60 marginl=20 marginr=20 marginb=10]

;メッセージウィンドウの表示
;一応ナレーター
[layopt layer=message0 visible=true]

テスト開始。[p]

;レイヤを指定してアニメーション
[anim layer=message0 top="-=256" effect=easeOutBack time=500 ]

;アニメを待つ
[wa]

[layopt layer=message1 visible=true]
[current layer=message1]
吹き出しのように見せるてすと！[p]

[anim layer=message0 top="-=266" effect=easeOutBack time=500 ]
[anim layer=message1 top="-=256" effect=easeOutBack time=500 ]

[layopt layer=message2 visible=true]
[current layer=message2]

吹き出しは上へ上へと持ち上げられる感じです。
テキストエリアは吹き出し画像にします。[p]


;レイヤー開放してみる。
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
[position layer=message3 left=20 top=140 width=680 height=256 page=fore visible=true]
[current layer=message3]

;tempura_cameraのZ深度
[tcamera_setting z=200,120,110,70 zoom=2.5,1,1,1]

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
[tcamera name=grissom zoom=1.2]


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

[tcamera name=ideen zoom=1.2]

#
テスト終わり。[p]

[glink  color="blue"  storage="scene1.ks"  size="20"  x="160"  width="400"  y="300"  text="よぶ　ひと"  target="*selectinterest"  ]
[glink  color="blue"  storage="scene1.ks"  size="20"  x="160"  width="400"  y="370"  text="よぶ　ひと"  target="*selectinterest"  ]
[glink  color="blue"  storage="scene1.ks"  size="20"  x="160"  width="400"  y="440"  text="よぶ　ひと"  target="*selectinterest"  ]
[s]
*selectinterest

[chara_mod  name="grissom" face="happy"  ]
#【グリッソム教授】
わー。興味あるなんて、嬉しいなー。[p]
#
・・・・・[p]
まぁ、作ってみたい気持ちはあるけど、むずかしいんでしょ？[p]
プログラミングとかやったことないし、、、[p]

[chara_mod name="grissom" face="default"]

#【グリッソム教授】
そんな君に、耳寄りな情報があるんだけど[p]
ききたい？　ききたいよね？[p]
#
いや、べつに
#【グリッソム教授】
[cm]
[font size=40]
[delay speed=160]
ティラノスクリプトー[p]
[delay speed=30]
[resetfont]

#
へぇー。それはいいね。[p]
せっかく作ったらたくさんの人に遊んでもらいたいもんね。[p]

#【グリッソム教授】
ウィンドウズ用のPCアプリケーションはもちろん。[p]
マック用のアプリケーションにだって対応するわよ。[p]
あと、HTML5だから、ブラウザゲームとしても発表できるわよ。[p]
ウェブサイトに貼り付けて遊んでもらえるから、気軽にゲームをプレイしてもらうことができるね。[p]
主要なブラウザはすべてサポートしているから、安心してね。[p]
#
やるなぁ。。[p]

でも、最近スマホが復旧してて、僕のサイトにもスマホで訪れる人が増えたんだけど[p]
スマホからは遊べない？[p]

#【グリッソム教授】
ティラノスクリプトで作ったゲームはスマートフォンからでも遊べるよ！[p]
アイフォーン、アンドロイドはもちろん。アイパッドとかのタブレットでも問題ないわ。[p]
#
おぉー。[p]

#【グリッソム教授】
AppStoreやGooglePlayに向けてアプリ化して販売することもできるから[p]
#
おぉぉ、、やっとの貧困生活から脱出できるかも[p]
#【グリッソム教授】
まぁ、おもしろいゲームつくらないと、売れもしないけどな！[p]
#
くっ。。[p]

#【グリッソム教授】
じゃあ、次に場面を移動してみるね[p]
廊下に移動するよ[p]
[bg  time="3000"  method="crossfade" storage="rouka.jpg"  ]

#
お、廊下に移動したね。[p]

#【グリッソム教授】
寒いよぉ〜。はやく教室に戻ろう。[p]

[bg  time="1000" method="slide"  storage="room.jpg" ]
#
あれ、今、場面の移動がちょっと違ったね。[p]
#【グリッソム教授】
うん。急いでたからね。[p]
ティラノスクリプトでは、いろいろな演出を加える事ができて[p]
画面を切り替えるだけでも１０種類以上の演出がつかえるよ。[p]
#
ふむ。便利だ[p]

#【グリッソム教授】
次にメッセージの表示方法を変えてみるね[p]
ティラノスクリプトでは、今みたいなアドベンチャーゲームの他に[r]
ビジュアルノベルのような全画面表示のゲームもつくれるよ。[p]

#

;キャラクター非表示
[chara_hide name="grissom"]


;メッセージを全画面に切り替え
[position layer="message0" left=20 top=40 width=920 height=560 page=fore visible=true ]

どうかな? 物語をじっくり読ませたい場合はこの方式が便利ですね[l][r]
ティラノスクリプトは非常に強力で、柔軟な表現が可能です。[l][cm]

[font size=40]文字のサイズを変更したり
[l][r]
[resetfont]
[font color="pink"]色を変更したり
[resetfont][l][r]

[ruby text=る]ル[ruby text=び]ビを[ruby text=ふ]振ることだって[ruby text=かん]簡[ruby text=たん]単にできます[l]
[cm]

;たて書きにする
[position vertical=true layer=message0 page=fore margint="45" marginl="0" marginr="70" marginb="60"]

このように縦書きで記述することもできます。[r][l]
縦書きでも、横書きの時と同じ機能を使うことができます。[r][l]

;横書きに戻す
[position vertical=false]

横書きと縦書きをシーンによって使い分けることもできます[r][l]
じゃあ、アドベンチャー形式に戻しますね[p]

;メッセージボックスを元に戻す
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]

@chara_show name="grissom"

#【グリッソム教授】
メッセージボックスは、自分の好きな画像を使うこともできるよ[p]



[font color="0x454D51"]
[deffont color="0x454D51"]

;名前の表示位置も変更
[free name="chara_name_area" layer="message0"]

[position layer=message0 width=960 height=210 top=430 left=0]
[position layer=message0 page=fore frame="frame.png" margint="45" marginl="50" marginr="70" marginb="60" opacity=230 ]


;名前枠の設定
[ptext name="chara_name_area" layer="message0"  color="0xFAFAFA"  size=24 x=40 y=435]
[chara_config ptext="chara_name_area"]

どうかな？[p]
ゲームに合わせて自分の好きなデザインを作ってくださいね[p]

あと、デフォルトだとセーブやロードは画面右下のボタンからできるけど[p]
ウィンドウをカスタマイズすれば、、、、[p]

;メニューボタン非表示
@hidemenubutton

;ロールボタン追加;;;;;;;;;;;;;;
	
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x=35 y=610]

;	オート
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x=110 y=610]

;	セーブ
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x=185 y=610]

;ロード
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x=260 y=610]

;クイックセーブ
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x=335 y=610]

;クイックロード
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x=410 y=610]

;バックログ
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x=485 y=610]

;メッセージウィンドウ非表示
[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x=560 y=610]

;フルスクリーン切替
[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x=635 y=610]

;メニュー呼び出し（※ロールボタンを使うなら不要）
[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x=710 y=610]

;コンフィグ（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" x=785 y=610 storage="config.ks"]

;タイトルに戻る
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x=860 y=610]

;;ロールボタン追加終わり


こんな風にゲームに必要な機能を画面の上に持たせることも簡単にできるよ[p]
これはロールボタンといって、ボタンに特別な機能を持たせる事ができます。[p]
標準で用意されているのは、[l]
セーブ、[l]
ロード、[l][cm]
タイトルへ戻る、
メニュー表示、
メッセージ非表示、
スキップ、
バックログ、
フルスクリーン切り替え、
クイックセーブ、
クイックロード、
オートモード！
[p]

はぁ、はぁ[p]

#
大丈夫？[p]
これだけあれば、ゲームを作るには困らなそうだね[p]

#【グリッソム教授】
さて、もちろん音楽を鳴らすこともできるよ[l][cm]
それじゃあ、再生するよ？[l][cm]

[link target=*playmusic]【１】うん。再生してください[endlink][r]
[link target=*noplay]【２】いや。今は再生しないで！[endlink]
[s]

*playmusic

[cm]
よし、再生するよ。[l]
@playbgm time="3000" storage=music.ogg loop=true
徐々にフェードインしながら再生することもできるんだ[l][cm]

@jump target="*common_bgm"

*noplay
[cm]
うん。わかった。再生はしないね。[l][cm]
また、試してみてね[l][cm]

*common_bgm

あ、そうそう[l][cm]
今みたいな選択肢で物語を分岐することも、簡単にできるよ。[l][cm]

#【グリッソム教授】
ここらで、別のキャラクターに登場してもらいましょうか[l][cm]
やまとー[p]
[chara_show name="ideen"]

こんな風に。簡単です。[l][r]
キャラクターは何人でも登場させることができるから、試してみてね。[p]

#ideen
おい、俺もう、帰っていいかな？[l][cm]

#【グリッソム教授】
あ、ごめんごめん。ありがとう[l][cm]

[chara_hide name="ideen"]

#【グリッソム教授】
これでティラノスクリプトの基本機能の説明は終わりだけど[p]
どうだったかな？[p]

#
うん、これなら自分でも作れそうな気がしてきたよ[p]

#【グリッソム教授】
よかった！[p]
最初は、ティラノスクリプト公式ページのチュートリアルをやってみると良いと思うよ！[p]
もちろん、このゲームもティラノスクリプトで動いてるから、参考になると思うし。[p]
ぜひ、ゲーム制作にチャレンジしてみてね[p]
プレイしてくれてありがとう。[p]

最後にティラノスクリプトで役立つ情報へのリンクを表示しておくから
確認してみてね。[p]

[cm]

*button_link

@layopt layer=message0 visible=false
@layopt layer=fix visible=false
[anim name="grissom" left=600 time=1000]

;リンクボタンを表示
[glink text="ティラノビルダーの紹介" size=20 width=500 x=30 y=100 color=blue target=tyranobuilder ]
[glink text="制作事例" size=20 width=500 x=30 y=160 color=blue target=example ]
[glink text="応用テクニック" size=20 width=500 x=30 y=220 color=blue target=tech ]
[glink text="役に立つ情報源" size=20 width=500 x=30 y=280 color=blue target=info ]
[glink text="タグリファレンス" size=20 width=500 x=30 y=340 color=blue target=tagref ]

[s]

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
window.open("http://tyrano.jp/home/example");
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
window.open("http://tyrano.jp/home/demo");
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
window.open("http://tyrano.jp/home/tag");
[endscript]

@jump target="*button_link"

[s]