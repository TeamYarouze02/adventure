;-----------------------------------------------------------
; 2017.01.15 ko10panda edit
; http://kopacurve.blog33.fc2.com/
;-----------------------------------------------------------

; キーフレームアニメ補助プラグイン v102

; キーフレームアニメーション定義がめんどくさい人（わたし）用に作りました
; そのまま使ったり、がっつり改造したり、好きなように使っていただければ幸いです
; ティラノスクリプトv461で動作確認済

;-----------------------------------------------------------
; 更新履歴
; 2015.01.15 v100
; 2018.03.03 v101 start_wiggle, stop_wiggle 追加
; 2018.04.21 v102 ユーザーがtimeを指定したときにwaitタグのtimeパラメータが正しく計算されていなかったのを修正

;===========================================================

;	キーフレームアニメ定義

;===========================================================

;-----------------------------------------------------------
; 画像を拡大しながら表示
;-----------------------------------------------------------
	[keyframe name="zoom_in"]
	[frame p="  0%" scale="0" opacity="0"]
	[frame p="100%" scale="1" opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を縮小しながら消去
;-----------------------------------------------------------
	[keyframe name="zoom_out"]
	[frame p="  0%" scale="1" opacity="1"]
	[frame p="100%" scale="0" opacity="0"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を拡大しながら表示（ちょっと大きくなって戻ってくる）
;-----------------------------------------------------------
	[keyframe name="zoom_in_bounce"]
	[frame p="  0%" scale="0"   opacity="1"]
	[frame p=" 80%" scale="1.2" opacity="1"]
	[frame p="100%" scale="1"   opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を縮小しながら消去（ちょっと大きくなってから縮小開始）
;-----------------------------------------------------------
	[keyframe name="zoom_out_bounce"]
	[frame p="  0%" scale="1"   opacity="1"]
	[frame p=" 30%" scale="1.2" opacity="1"]
	[frame p="100%" scale="0"   opacity="0"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を上下に開く
;-----------------------------------------------------------
	[keyframe name="open_vertical"]
	[frame p="  0%" scaleY="0" opacity="1"]
	[frame p="100%" scaleY="1" opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を上下から閉じる
;-----------------------------------------------------------
	[keyframe name="close_vertical"]
	[frame p="  0%" scaleY="1" opacity="1"]
	[frame p="100%" scaleY="0" opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を上下に開く（ちょっとだけ伸びて戻ってくる）
;-----------------------------------------------------------
	[keyframe name="open_vertical_bounce"]
	[frame p="  0%" scaleY="0"   opacity="1"]
	[frame p=" 80%" scaleY="1.2" opacity="1"]
	[frame p="100%" scaleY="1"   opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を上下から閉じる（ちょっとだけ伸びて戻ってくる）
;-----------------------------------------------------------
	[keyframe name="close_vertical_bounce"]
	[frame p="  0%" scaleY="1"   opacity="1"]
	[frame p=" 30%" scaleY="1.2" opacity="1"]
	[frame p="100%" scaleY="0"   opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を左右に開く
;-----------------------------------------------------------
	[keyframe name="open_horizontal"]
	[frame p="  0%" scaleX="0" opacity="1"]
	[frame p="100%" scaleX="1" opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を左右から閉じる
;-----------------------------------------------------------
	[keyframe name="close_horizontal"]
	[frame p="  0%" scaleX="1" opacity="1"]
	[frame p="100%" scaleX="0" opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を左右に開く（ちょっとだけ伸びて戻ってくる）
;-----------------------------------------------------------
	[keyframe name="open_horizontal_bounce"]
	[frame p="  0%" scaleX="0"   opacity="1"]
	[frame p=" 80%" scaleX="1.2" opacity="1"]
	[frame p="100%" scaleX="1"   opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 画像を左右から閉じる（ちょっとだけ伸びて戻ってくる）
;-----------------------------------------------------------
	[keyframe name="close_horizontal_bounce"]
	[frame p="  0%" scaleX="1"   opacity="1"]
	[frame p=" 30%" scaleX="1.2" opacity="1"]
	[frame p="100%" scaleX="0"   opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 右に90度回転
;-----------------------------------------------------------
	[keyframe name="rotate_r90"]
	[frame p="  0%" rotate=" 0deg"]
	[frame p="100%" rotate="90deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 右に90度回転した状態から元の位置に戻る
;-----------------------------------------------------------
	[keyframe name="reset_rotate_r90"]
	[frame p="  0%" rotate="90deg"]
	[frame p="100%" rotate=" 0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 右に180度回転
;-----------------------------------------------------------
	[keyframe name="rotate_r180"]
	[frame p="  0%" rotate="  0deg"]
	[frame p="100%" rotate="180deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 右に180度回転した状態から元の位置に戻る
;-----------------------------------------------------------
	[keyframe name="reset_rotate_r180"]
	[frame p="  0%" rotate="180deg"]
	[frame p="100%" rotate="  0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 右に270度回転
;-----------------------------------------------------------
	[keyframe name="rotate_r270"]
	[frame p="  0%" rotate="  0deg"]
	[frame p="100%" rotate="270deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 右に270度回転した状態から元の位置に戻る
;-----------------------------------------------------------
	[keyframe name="reset_rotate_r270"]
	[frame p="  0%" rotate="270deg"]
	[frame p="100%" rotate="  0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 右に360度回転
;-----------------------------------------------------------
	[keyframe name="rotate_r360"]
	[frame p="  0%" rotate="  0deg"]
	[frame p="100%" rotate="360deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 右に360度回転した状態から元の位置に戻る
;-----------------------------------------------------------
	[keyframe name="reset_rotate_r360"]
	[frame p="  0%" rotate="360deg"]
	[frame p="100%" rotate="  0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 左に90度回転
;-----------------------------------------------------------
	[keyframe name="rotate_l90"]
	[frame p="  0%" rotate="  0deg"]
	[frame p="100%" rotate="-90deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 左に90度回転した状態から元の位置に戻る
;-----------------------------------------------------------
	[keyframe name="reset_rotate_l90"]
	[frame p="  0%" rotate="-90deg"]
	[frame p="100%" rotate="  0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 左に180度回転
;-----------------------------------------------------------
	[keyframe name="rotate_l180"]
	[frame p="  0%" rotate="   0deg"]
	[frame p="100%" rotate="-180deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 左に180度回転した状態から元の位置に戻る
;-----------------------------------------------------------
	[keyframe name="reset_rotate_l180"]
	[frame p="  0%" rotate="-180deg"]
	[frame p="100%" rotate="   0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 左に270度回転
;-----------------------------------------------------------
	[keyframe name="rotate_l270"]
	[frame p="  0%" rotate="   0deg"]
	[frame p="100%" rotate="-270deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 左に270度回転した状態から元の位置に戻る
;-----------------------------------------------------------
	[keyframe name="reset_rotate_l270"]
	[frame p="  0%" rotate="-270deg"]
	[frame p="100%" rotate="   0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 左に360度回転
;-----------------------------------------------------------
	[keyframe name="rotate_l360"]
	[frame p="  0%" rotate="   0deg"]
	[frame p="100%" rotate="-360deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 左に360度回転した状態から元の位置に戻る
;-----------------------------------------------------------
	[keyframe name="reset_rotate_l360"]
	[frame p="  0%" rotate="-360deg"]
	[frame p="100%" rotate="   0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 拡大＋右に２回転しながら表示
;-----------------------------------------------------------
	[keyframe name="rotate_zoom_in"]
	[frame p="  0%" scale="0"   rotate="  0deg" opacity="0"]
	[frame p=" 80%" scale="1.2" rotate="720deg" opacity="1"]
	[frame p="100%" scale="1.0"                 opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 縮小＋左に２回転しながら退場
;-----------------------------------------------------------
	[keyframe name="rotate_zoom_out"]
	[frame p="  0%" scale="1.0" rotate="   0deg" opacity="1"]
	[frame p=" 30%" scale="1.2"                  opacity="1"]
	[frame p="100%" scale="0"   rotate="-720deg" opacity="0"]
	[endkeyframe]

;-----------------------------------------------------------
; 上下にふわふわ
;-----------------------------------------------------------
	[keyframe name="float_infinite"]
	[frame p="  0%" y=" 0"]
	[frame p=" 25%" y="-8"]
	[frame p=" 50%" y=" 0"]
	[frame p=" 75%" y=" 8"]
	[frame p="100%" y=" 0"]
	[endkeyframe]

;-----------------------------------------------------------
; 点滅
;-----------------------------------------------------------
	[keyframe name="blink_infinite"]
	[frame p="  0%" opacity="1"]
	[frame p=" 50%" opacity="0"]
	[frame p="100%" opacity="1"]
	[endkeyframe]

;-----------------------------------------------------------
; ズーム（1.0倍 -> 1.2倍）
;-----------------------------------------------------------
	[keyframe name="zoom_infinite"]
	[frame p="  0%" scale="1"]
	[frame p=" 50%" scale="1.2"]
	[frame p="100%" scale="1"]
	[endkeyframe]

;-----------------------------------------------------------
; ズーム＋傾き（ズームイン -> アウトしながら左右に10度ずつ回転）
;-----------------------------------------------------------
	[keyframe name="rotate_zoom_infinite"]
	[frame p="  0%" scale="1"   rotate="  0deg" opacity="1"]
	[frame p=" 25%" scale="1.2" rotate=" 10deg"]
	[frame p=" 50%" scale="0.9" rotate="  0deg"]
	[frame p=" 75%" scale="1.2" rotate="-10deg"]
	[frame p="100%" scale="1"   rotate="  0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; X軸回転
;-----------------------------------------------------------
	[keyframe name="rotate_x_infinite"]
	[frame p="  0%" rotateX="  0deg"]
	[frame p="100%" rotateX="360deg"]
	[endkeyframe]

;-----------------------------------------------------------
; X軸回転（イマイチ見た目の違いが分からんので保留）
;-----------------------------------------------------------
;	[keyframe name="start_rotate_x"]
;	[frame p="  0%" rotateX="   0deg"]
;	[frame p="100%" rotateX="-360deg"]
;	[endkeyframe]

;-----------------------------------------------------------
; Y軸回転
;-----------------------------------------------------------
	[keyframe name="rotate_y_infinite"]
	[frame p="  0%" rotateY="  0deg"]
	[frame p="100%" rotateY="360deg"]
	[endkeyframe]

;-----------------------------------------------------------
; Y軸回転（イマイチ見た目の違いが分からんので保留）
;-----------------------------------------------------------
;	[keyframe name="start_rotate_y"]
;	[frame p="  0%" rotateY="   0deg"]
;	[frame p="100%" rotateY="-360deg"]
;	[endkeyframe]

;-----------------------------------------------------------
; Z軸回転（右回り）
;-----------------------------------------------------------
	[keyframe name="rotate_z_right_infinite"]
	[frame p="  0%" rotateZ="  0deg"]
	[frame p="100%" rotateZ="360deg"]
	[endkeyframe]

;-----------------------------------------------------------
; Z軸回転（左回り）
;-----------------------------------------------------------
	[keyframe name="rotate_z_left_infinite"]
	[frame p="  0%" rotateZ="   0deg"]
	[frame p="100%" rotateZ="-360deg"]
	[endkeyframe]

;-----------------------------------------------------------
; ８の字回転
;-----------------------------------------------------------
	[keyframe name="figure_eight_infinite"]
	[frame p="  0%" rotateY="  0deg" rotateZ="0deg"]
	[frame p="100%" rotateY="360deg" rotateZ="360deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 水平方向に傾斜
;-----------------------------------------------------------
	[keyframe name="skew_horizontal_infinite"]
	[frame p="  0%" skewX="  0deg"]
	[frame p=" 25%" skewX=" 15deg"]
	[frame p=" 50%" skewX="  0deg"]
	[frame p=" 75%" skewX="-15deg"]
	[frame p="100%" skewX="  0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 垂直方向に傾斜
;-----------------------------------------------------------
	[keyframe name="skew_vertical_infinite"]
	[frame p="  0%" skewY="  0deg"]
	[frame p=" 25%" skewY=" 15deg"]
	[frame p=" 50%" skewY="  0deg"]
	[frame p=" 75%" skewY="-15deg"]
	[frame p="100%" skewY="  0deg"]
	[endkeyframe]

;-----------------------------------------------------------
; 水平方向に伸縮
;-----------------------------------------------------------
	[keyframe name="stretch_horizontal_infinite"]
	[frame p="  0%" scaleX="1"]
	[frame p=" 50%" scaleX="0.9"]
	[frame p="100%" scaleX="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 垂直方向の伸縮
;-----------------------------------------------------------
	[keyframe name="stretch_vertical_infinite"]
	[frame p="  0%" scaleY="1"]
	[frame p=" 50%" scaleY="0.9"]
	[frame p="100%" scaleY="1"]
	[endkeyframe]

;-----------------------------------------------------------
; 戦闘ステップ（左右に跳ねるかんじ）
;-----------------------------------------------------------
	[keyframe name="step_infinite"]
	[frame p="  0%" x="  0" y=" 0"]
	[frame p=" 25%" x="-15" y="15"]
	[frame p=" 50%" x="  0" y="-5"]
	[frame p=" 75%" x=" 15" y="15"]
	[frame p="100%" x="  0" y="-5"]
	[endkeyframe]

;-----------------------------------------------------------
; デンプシーロールのようなもの
;-----------------------------------------------------------
	[keyframe name="dempsey_roll_infinite"]
	[frame p="  0%" x="  0" y="  0"]
	[frame p=" 20%" x="-40" y="-10"]
	[frame p=" 40%" x="-50" y=" 20"]
	[frame p=" 50%" x="  0" y="  0"]
	[frame p=" 70%" x=" 40" y="-10"]
	[frame p=" 90%" x=" 50" y=" 20"]
	[frame p="100%" x="  0" y="  0"]	
	[endkeyframe]


; 2018.03.02 追加
;-----------------------------------------------------------
; ガタガタブルブル
;-----------------------------------------------------------
	[keyframe name="wiggle"]
	[frame p="  0%" x="0" rotateZ=" 0deg"]
	[frame p=" 25%" x="3" rotateZ=" 1deg"]
	[frame p=" 50%" x="0" rotateZ=" 0deg"]
	[frame p=" 75%" x="3" rotateZ="-1deg"]
 	[frame p="100%" x="0" rotateZ=" 0deg"]
	[endkeyframe]



;===========================================================

;	マクロ

;===========================================================

;	事前にアニメーションさせたい画像を読み込んでおいてください
; 	指定できるパラメータは layer, time, name の３つです
;	何も指定しなかった場合は前景レイヤ0に読み込まれた画像すべてが対象となります
;	消去後も画像は読み込まれたまま（visible=falseになってるだけ）なのでご注意ください

;------------------------------------------------------------
; 拡大しながら表示 [zoom_in]
;------------------------------------------------------------
	[macro name="zoom_in"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="zoom_in" easing="ease-out" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 縮小しながら消去 [zoom_out]
;------------------------------------------------------------
	[macro name="zoom_out"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="zoom_out" easing="ease-in" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[layopt layer="&mp.layer" visible="false"]
	[endmacro]

;------------------------------------------------------------
; 拡大しながら表示・その２ [zoom_in_bounce]
;------------------------------------------------------------
	[macro name="zoom_in_bounce"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="zoom_in_bounce" easing="ease-out" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 縮小しながら消去・その２ [zoom_out_bounce]
;------------------------------------------------------------
	[macro name="zoom_out_bounce"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="zoom_out_bounce" easing="ease-in" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[layopt layer="&mp.layer" visible="false"]
	[endmacro]

;------------------------------------------------------------
; 上下に開く [open_vertical]
;------------------------------------------------------------
	[macro name="open_vertical"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="open_vertical" easing="ease-out" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 上下から閉じる [close_vertical]
;------------------------------------------------------------
	[macro name="close_vertical"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="close_vertical" easing="ease-in" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[layopt layer="&mp.layer" visible="false"]
;	[freeimage layer="&mp.layer"]
	[endmacro]

;------------------------------------------------------------
; 上下に開く・その２ [open_vertical_bounce]
;------------------------------------------------------------
	[macro name="open_vertical_bounce"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="open_vertical_bounce" easing="ease-out" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 上下から閉じる・その２ [close_vertical_bounce]
;------------------------------------------------------------
	[macro name="close_vertical_bounce"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="close_vertical_bounce" easing="ease-in" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[layopt layer="&mp.layer" visible="false"]
;	[freeimage layer="&mp.layer"]
	[endmacro]

;------------------------------------------------------------
; 左右に開く [open_horizontal]
;------------------------------------------------------------
	[macro name="open_horizontal"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="open_horizontal" easing="ease-out" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 左右から閉じる [close_horizontal]
;------------------------------------------------------------
	[macro name="close_horizontal"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="close_horizontal" easing="ease-in" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[layopt layer="&mp.layer" visible="false"]
;	[freeimage layer="&mp.layer"]
	[endmacro]

;------------------------------------------------------------
; 左右に開く・その２ [open_horizontal_bounce]
;------------------------------------------------------------
	[macro name="open_horizontal_bounce"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="open_horizontal_bounce" easing="ease-out" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 左右から閉じる・その２ [close_horizontal_bounce]
;------------------------------------------------------------
	[macro name="close_horizontal_bounce"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="close_horizontal_bounce" easing="ease-in" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[layopt layer="&mp.layer" visible="false"]
;	[freeimage layer="&mp.layer"]
	[endmacro]

;------------------------------------------------------------
; 右に90度回転 [rotate_r90]
;------------------------------------------------------------
	[macro name="rotate_r90"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_r90" easing="ease" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 右に90度回転した状態から元の位置に戻す [reset_rotate_r90]
;------------------------------------------------------------
	[macro name="reset_rotate_r90"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="reset_rotate_r90" easing="ease" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 右に180度回転 [rotate_r180]
;------------------------------------------------------------
	[macro name="rotate_r180"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_r180" easing="ease" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 右に180度回転した状態から元の位置に戻す [reset_rotate_r180]
;------------------------------------------------------------
	[macro name="reset_rotate_r180"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="reset_rotate_r180" easing="ease" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 右に270度回転 [rotate_r270]
;------------------------------------------------------------
	[macro name="rotate_r270"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 600" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_r270" easing="ease" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 右に270度回転した状態から元の位置に戻す [reset_rotate_r270]
;------------------------------------------------------------
	[macro name="reset_rotate_r270"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 600" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="reset_rotate_r270" easing="ease" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 右に360度回転 [rotate_r360]
;------------------------------------------------------------
	[macro name="rotate_r360"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 700" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_r360" easing="ease" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 右に360度回転した状態から元の位置に戻す [reset_rotate_r360]
;------------------------------------------------------------
	[macro name="reset_rotate_r360"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 700" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="reset_rotate_r360" easing="ease" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 左に90度回転 [rotate_l90]
;------------------------------------------------------------
	[macro name="rotate_l90"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_l90" easing="ease" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 左に90度回転した状態から元の位置に戻す [reset_rotate_l90]
;------------------------------------------------------------
	[macro name="reset_rotate_l90"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 400" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="reset_rotate_l90" easing="ease" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 左に180度回転 [rotate_l180]
;------------------------------------------------------------
	[macro name="rotate_l180"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_l180" easing="ease" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 左に180度回転した状態から元の位置に戻す [reset_rotate_l180]
;------------------------------------------------------------
	[macro name="reset_rotate_l180"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 500" cond="mp.time == undefined"]	
	[kanim name="&mp.name" layer="&mp.layer" keyframe="reset_rotate_l180" easing="ease" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 左に270度回転 [rotate_l270]
;------------------------------------------------------------
	[macro name="rotate_l270"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 600" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_l270" easing="ease" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 左に270度回転した状態から元の位置に戻す [reset_rotate_l270]
;------------------------------------------------------------
	[macro name="reset_rotate_l270"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 600" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="reset_rotate_l270" easing="ease" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 左に360度回転 [rotate_l360]
;------------------------------------------------------------
	[macro name="rotate_l360"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 700" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_l360" easing="ease" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 左に360度回転した状態から元の位置に戻す [reset_rotate_l360]
;------------------------------------------------------------
	[macro name="reset_rotate_l360"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 700" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="reset_rotate_l360" easing="ease" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
; 拡大＋右２回転で登場 [rotate_zoom_in]
;------------------------------------------------------------
	[macro name="rotate_zoom_in"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 800" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_zoom_in" easing="ease" time="&mp.time" count="1"]
	[layopt layer="&mp.layer" visible="true"]
	[wait time="&parseInt(mp.time) + 100"]
	[endmacro]

;------------------------------------------------------------
;	縮小＋左２回転で退場 [rotate_zoom_out]
;------------------------------------------------------------
	[macro name="rotate_zoom_out"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 800" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_zoom_out" easing="ease" time="&mp.time" count="1"]
	[wait time="&parseInt(mp.time) + 100"]
	[layopt layer="&mp.layer" visible="false"]
;	[freeimage layer="&mp.layer"]
	[endmacro]

;------------------------------------------------------------
; ふわふわタイム開始 [start_float]
;------------------------------------------------------------
	[macro name="start_float"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="float_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; ふわふわタイム終了 [stop_float]
;------------------------------------------------------------
	[macro name="stop_float"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="float_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; 点滅タイム開始 [start_blink]
;------------------------------------------------------------
	[macro name="start_blink"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="blink_infinite" easing="ease-in-out" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; 点滅タイム終了 [stop_blink]
;------------------------------------------------------------
	[macro name="stop_blink"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="blink_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; ズームタイム開始 [start_zoom]
;------------------------------------------------------------
	[macro name="start_zoom"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="zoom_infinite" easing="ease-in-out" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; ズームタイム終了 [stop_zoom]
;------------------------------------------------------------
	[macro name="stop_zoom"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="zoom_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; 拡大＋傾きタイム開始 [start_rotate_zoom]
;------------------------------------------------------------
	[macro name="start_rotate_zoom"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 2000" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_zoom_infinite" easing="ease" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; 拡大＋傾きタイム終了 [sttop_rotate_zoom]
;------------------------------------------------------------
	[macro name="stop_rotate_zoom"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_zoom_infinite" time="0" count="0" mode="none"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; X軸を中心に回転するタイム開始 [start_rotate_x]
;------------------------------------------------------------
	[macro name="start_rotate_x"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_x_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; X軸を中心に回転するタイム終了 [stop_rotate_x]
;------------------------------------------------------------
	[macro name="stop_rotate_x"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_x_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; Y軸を中心に回転するタイム開始 [start_rotate_y]
;------------------------------------------------------------
	[macro name="start_rotate_y"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_y_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; Y軸を中心に回転するタイム終了 [stop_rotate_y]
;------------------------------------------------------------
	[macro name="stop_rotate_y"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_y_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; Z軸を中心に回転するタイム開始 [start_rotate_z_right]
;------------------------------------------------------------
	[macro name="start_rotate_z_right"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_z_right_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; Z軸を中心に回転するタイム終了 [stop_rotate_z_right]
;------------------------------------------------------------
	[macro name="stop_rotate_z_right"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_z_right_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; Z軸を中心に回転するタイム開始（左回り） [start_rotate_z_left]
;------------------------------------------------------------
	[macro name="start_rotate_z_left"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_z_left_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; Z軸を中心に回転するタイム終了（左回り） [stop_rotate_z_left]
;------------------------------------------------------------
	[macro name="stop_rotate_z_left"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="rotate_z_left_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; はちのじ回転タイム開始 [start_figure_eight]
;------------------------------------------------------------
	[macro name="start_figure_eight"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="figure_eight_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; はちのじ回転タイム終了 [stop_figure_eight]
;------------------------------------------------------------
	[macro name="stop_figure_eight"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="figure_eight_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; 左右に傾斜タイム開始 [start_skew_horizontal]
;------------------------------------------------------------
	[macro name="start_skew_horizontal"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="skew_horizontal_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; 左右に傾斜タイム終了 [stop_skew_horizontal]
;------------------------------------------------------------
	[macro name="stop_skew_horizontal"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="skew_horizontal_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; 上下に傾斜タイム開始 [start_skew_vertical]
;------------------------------------------------------------
	[macro name="start_skew_vertical"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="skew_vertical_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; 上下に傾斜タイム終了 [stop_skew_vertical]
;------------------------------------------------------------
	[macro name="stop_skew_vertical"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="skew_vertical_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; 左右に伸縮タイム開始 [start_stretch_horizontal]
;------------------------------------------------------------
	[macro name="start_stretch_horizontal"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="stretch_horizontal_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; 左右に伸縮タイム終了 [stop_stretch_horizontal]
;------------------------------------------------------------
	[macro name="stop_stretch_horizontal"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="stretch_horizontal_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
;	上下に伸縮タイム開始 [start_stretch_vertical]
;------------------------------------------------------------
	[macro name="start_stretch_vertical"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 500" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="stretch_vertical_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
;	上下に伸縮タイム終了 [stop_stretch_vertical]
;------------------------------------------------------------
	[macro name="stop_stretch_vertical"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="stretch_vertical_infinite" time="0" count="0" mode="none"]
	[endmacro]

;------------------------------------------------------------
; 戦闘ステップ [start_step]
;------------------------------------------------------------
	[macro name="start_step"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1000" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="step_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; 戦闘ステップ終了 [stop_step]
;------------------------------------------------------------
	[macro name="stop_step"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="step_infinite" time="0" count="0" mode="forwards"]
	[endmacro]

;------------------------------------------------------------
; デンプシーロール（もどき） [start_dempsey_roll]
;------------------------------------------------------------
	[macro name="start_dempsey_roll"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 1000" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="dempsey_roll_infinite" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; デンプシーロール終了 [stop_dempsey_roll]
;------------------------------------------------------------
	[macro name="stop_dempsey_roll"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="dempsey_roll_infinite" time="0" count="0" mode="forwards"]
	[endmacro]

;------------------------------------------------------------
; ガタガタブルブル開始 [start_wiggle]
;------------------------------------------------------------
	[macro name="start_wiggle"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[eval exp="mp.time = 100" cond="mp.time == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="wiggle" easing="linear" time="&mp.time" count="infinite"]
	[layopt layer="&mp.layer" visible="true"]
	[endmacro]

;------------------------------------------------------------
; ガタガタブルブル終了 [stop_wiggle]
;------------------------------------------------------------
	[macro name="stop_wiggle"]
	[eval exp="mp.layer = '0'" cond="mp.layer == undefined"]
	[kanim name="&mp.name" layer="&mp.layer" keyframe="wiggle" time="0" count="0" mode="forwards"]
	[endmacro]

[return]
