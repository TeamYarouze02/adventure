;***********************************************************
;
;	マクロ用ファイル
;
;		Date	: 2019/03/05
;		Ver  	: 0.00
;
;		Author	: yarouze
;
;***********************************************************


;***********************************************************
;blnMng		吹き出し表示管理マクロ
;
;乱数を取得して吹き出しを表示。
;%layNum	レイヤー番号
;&sf.mesName	メッセージレイヤー名
;***********************************************************
[macro name = "blnMng"]

	;loadjs読み込み
	[loadjs storage = js/rand.js]

	;ifでsf.blnIndexを判定（sf.blnIndexの初期値は1）
	;2以上ならblnAprとblnMovUp両方呼ぶ。それ以外ならblnAprのみ。
	[if exp = "sf.blnIndex < 2"]

		;rand.jsより乱数取得
		[iscript]

			//飛び出す移動の座標
			sf.blnMovX = blnMovX
			sf.blnMovY = blnMovY
			
			;初回の移動座標をここで代入しておく。
			sf.blnArray['blnMovUpAddX' + sf.blnIndex] += blnMovX
			sf.blnArray['blnMovUpAddY' + sf.blnIndex] += blnMovY
			
		[endscript]

		;フキダシのインデックス付き名前作成。操作するオブジェクト指定。
		[eval exp ="sf.blnName = 'bln' + sf.blnIndex"]
		
		;吹き出し表示
		[image layer = "%layNum" storage = "balloon.png" left = "500" top = "500" name = "&sf.blnName" zindex = "10"]
		[kanim name = "&sf.blnName" keyframe = "blnApr" time = "350" easing = "cubic-bezier(.15,1.56,.7,1)"]
		
		;メッセージレイヤ表示
		[eval exp ="sf.mesName = 'message' + sf.blnIndex"]
		[current layer = "&sf.mesName"] 
		[layopt layer = "&sf.mesName" visible = "true"]
		[position layer = "&sf.mesName" left = "500" top = "500" width = "450" height = "370" margint = "20" marginl = "20" marginr = "20" marginb = "20"]
		[kanim layer = "&sf.mesName" keyframe = "msgApr" time = "350" easing = "cubic-bezier(.15,1.56,.7,1)"]
		
		;フキダシのインデックスに1加算
		[eval exp = "sf.blnIndex += 1"]

	[else]

		[iscript]
		
			;フキダシの座標を動的に作成。
			for ( var i = 1; i <= sf.blnIndex ; i++ ){

				;ここで格納する。
				sf.blnArray['blnMovUpAddX' + i] += blnMovUpX
				sf.blnArray['blnMovUpAddY' + i] += blnMovUpY

			}

		[endscript]

		;sf.blnIndexが2以上。吹き出しを押し上げる。
		[for name = "f.i" from = "1" len = "&sf.blnIndex"]
		
			;フキダシのインデックス付き名前作成。操作するオブジェクト指定。
			[eval exp ="sf.blnName = 'bln' + f.i"]

			[iscript]
			
				;格納したテーブルから取り出し。
				sf.blnMovUpAddX = sf.blnArray['blnMovUpAddX' + f.i]
				sf.blnMovUpAddY = sf.blnArray['blnMovUpAddY' + f.i]
				
			[endscript]

			;吹き出しを押し上げる。
			[kanim layer = "%layNum" name = "&sf.blnName" keyframe = "blnMovUp" time = "350"]
			
			;フキダシメッセージレイヤのインデックス名前作成。
			[eval exp ="sf.mesName = 'message' + f.i"]
			;操作するメッセージレイヤ指定。
			[current layer = "&sf.mesName"] 
			[layopt layer = "&sf.mesName" visible = "true"]
			[kanim layer = "&sf.mesName" keyframe = "blnMovUp" time = "350"]

		[nextfor]
			
			[iscript]
		
				//飛び出す移動の座標
				sf.blnMovX = blnMovX
				sf.blnMovY = blnMovY

			[endscript]

			[eval exp ="sf.blnName = 'bln' + sf.blnIndex"]

			;吹き出し表示
			[image layer = "%layNum" storage = "balloon.png" left = "500" top = "500" name = "&sf.blnName" zindex = "10"]
			[kanim name = "&sf.blnName" keyframe = "blnApr" time = "350" easing = "cubic-bezier(.15,1.56,.7,1)"]

			;メッセージレイヤ表示
			[eval exp ="sf.mesName = 'message' + sf.blnIndex"]
			[current layer = "&sf.mesName"] 
			[layopt layer = "&sf.mesName" visible = "true"]
			[position layer = "&sf.mesName" left = "500" top = "500" width = "450" height = "370" margint = "20" marginl = "20" marginr = "20" marginb = "20"]
			[kanim layer = "&sf.mesName" keyframe = "msgApr" time = "350" easing = "cubic-bezier(.15,1.56,.7,1)"]
			
			;フキダシのインデックスに1加算
			[eval exp = "sf.blnIndex =+ 1"]

	[endif]
	
[endmacro]
;***********************************************************