;一番最初に呼び出されるファイル
[title name="グリッソムとアイディーン（仮）"]

[stop_keyconfig]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述する。

;フォント変更
[deffont face="しっぽりアンチックMedium"][resetfont]

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;tempura_camera呼び出し。
[plugin name="tempura_camera" layer=base,0,1,2 manager=true]

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;起動時システム変数
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;スコア用システム変数 sf.score
;初期スコア:1000000000
;カンスト:99999999999
[eval exp="sf.score=100000000000"]

;回答可能回数 sf.comm
;デフォルト:3
;最大:無限（値は-1）
[eval exp="sf.comm=3"]

;タイトル画面へ移動
@jump storage="title.ks"

[s]


