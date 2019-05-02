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

;一番最初に呼び出されるファイル
[title name = "グリッソムとアイディーン（仮）"]

[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
[call storage = "tyrano.ks"]

;ゲームで必ず必要な初期化処理はこのファイルに記述する。
;js読み込み。フォルダを切った場合others以下を指定してやる必要あり。
[call storage = "macro.ks"]
;キーフレームアニメーション定義ファイル読み込み。
[call storage = "anime.ks"]

;フォント変更
[deffont face = "しっぽりアンチックMedium"]
[resetfont]

;メッセージボックスは非表示
[layopt layer = "message" visible = "false"]

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]


;***********************************************************
;
;プラグイン
;
;***********************************************************

;tempura_cameraプラグイン
;[plugin name=tempura_camera layer=0,1,2,3,4,5 manager=true]

;forプラグイン
[plugin name = "for"]

;***********************************************************
;
;起動時システム変数
;
;***********************************************************

;スコア用システム変数 sf.score
;初期スコア:1000000000
;カンスト:99999999999
[eval exp = "sf.score = 100000000000"]

;吹き出し初期位置
;グリッソム教授
[eval exp = "tf.GRISSOM_BLNINITY = 500"] 
[eval exp = "tf.GRISSOM_BLNINITX = 500"] 

;アイディーン
[eval exp = "tf.IDEEN_BLNINITY = 600"] 
[eval exp = "tf.IDEEN_BLNINITX = 400"] 

;吹き出し用各種変数
;吹き出しインデックス番号
[eval exp = "sf.blnIndex = 1"]
;メッセージレイヤインデックス番号
[eval exp = "sf.mesIndex = 0"]
;メッセージレイヤ名称
[eval exp = "sf.mesName"]
;吹き出しオブジェクト名称格納用変数
[eval exp = "sf.blnName"]
;吹き出し座標格納用連想配列
[eval exp = "sf.blnArray = {}"]
;吹き出し出現移動座標格納用
[eval exp = "sf.blnMovX = 0"]
[eval exp = "sf.blnMovY = 0"]
;吹き出し押し上げ移動座標格納用
[eval exp = "sf.blnMovUpAddX = 0"]
[eval exp = "sf.blnMovUpAddY = 0"]

;吹き出しの左右振れ(これをx座標に掛ける)
[eval exp = "tf.blnShake = -1"]

;回答可能回数 sf.comm
;デフォルト:3
;最大:無限（値は-1）
[eval exp = "sf.comm = 3"]

;タイトル画面へ移動
;[jump storage=title.ks]
[jump storage = "scene1.ks"]

[s]
