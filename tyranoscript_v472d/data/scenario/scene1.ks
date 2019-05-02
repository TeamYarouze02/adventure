;***********************************************************
;
;	「グリッソムとアイディーン（仮）」
;
;		Date	: 2018/11/12
;		Ver  	: 0.00
;
;		Author	: yarouze
;
;***********************************************************

*start

[cm]
[clearfix]
[start_keyconfig]

;BGM再生
;[playbgm storage = "bgm01.ogg" volume = "60"]

;キャラ定義
;グリッソム教授
[chara_new name = "grissom" storage = "chara/grissom/grissom00.png" jname = "グリッソム教授"]
;アイディーン
[chara_new name = "ideen" storage = "chara/ideen/ideen00.png" jname = "アイディーン"]

;レイヤー
;レイヤーの重なり順はlayer = "〇"の数字順。数字が大きいほど手前。
;変数をタグで使用する際は&をつける。

;各レイヤーのvisivleをtrueにする。
;背景
[layopt layer = "0" visible = "true"]
;アイディーン吹き出し
[layopt layer = "1" visible = "true"]
;アイディーン
[layopt layer = "2" visible = "true"]
;グリッソム教授吹き出し
[layopt layer = "3" visible = "true"]
;グリッソム教授
[layopt layer = "4" visible = "true"]
;前景
[layopt layer = "5" visible = "true"]

;各種画像の読み込みと表示。
;前景
[image layer = "5" storage = "prebg00.png" left = "0" top = "1045"]
;背景
[image layer = "0" storage = "bg00.png" left = "-80" top = "-80"]

;キャラ表示
;グリッソム教授
[chara_show layer = "4" name = "grissom" left = "450" top = "400" time = "500" zindex ="100"]
;アイディーン
[chara_show layer = "2" name = "ideen" left = "280" top = "450" time = "500"]

;吹き出し管理マクロ：blnMng
[blnMng layNum = "5"]

1番フキダシ[r][l]
;mesName:[emb exp ="sf.mesName"][r][l]
;index:[emb exp = "sf.blnIndex"][r]
x:[emb exp = "sf.blnMovX"][r]
y:[emb exp = "sf.blnMovY"][r]
;[emb exp ="sf.blnName"][l]

[blnMng layNum = "5"]

2番フキダシ[r][l]
;mesName:[emb exp ="sf.mesName"][r][l]
;index:[emb exp = "sf.blnIndex"][r]
;x:[emb exp = "sf.blnMovX"][r]
;y:[emb exp = "sf.blnMovY"][r]
;[emb exp ="sf.blnName"][l]

[blnMng layNum = "5"]

3番フキダシ[r][l]
;mesName:[emb exp ="sf.mesName"][r][l]
;index:[emb exp = "sf.blnIndex"][r]
;x:[emb exp = "sf.blnMovX"][r]
;y:[emb exp = "sf.blnMovY"][r]
;[emb exp ="sf.blnName"][l]

[blnMng layNum = "5"]

4番フキダシ[r][l]
;mesName:[emb exp ="sf.mesName"][r][l]
;index:[emb exp = "sf.blnIndex"][r]
;x:[emb exp = "sf.blnMovX"][r]
;y:[emb exp = "sf.blnMovY"][r]
;[emb exp ="sf.blnName"][l]

[blnMng layNum = "5"]

5番フキダシ[r][l]
;mesName:[emb exp ="sf.mesName"][r][l]
;index:[emb exp = "sf.blnIndex"][r]
;x:[emb exp = "sf.blnMovX"][r]
;y:[emb exp = "sf.blnMovY"][r]
;[emb exp ="sf.blnName"][l]

[blnMng layNum = "5"]