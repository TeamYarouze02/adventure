;***********************************************************
;
;	キーフレームアニメーション定義ファイル
;
;		Date	: 2019/03/05
;		Ver  	: 0.00
;
;		Author	: yarouze
;
;***********************************************************


;吹き出し出現アニメ
;blnApr****************************************************

*blnApr
	[keyframe name = "blnApr"]
		[frame p = "0%" scale = "0" opacity = "0"]
		[frame p = "100%" x = "&sf.blnMovX" y = "&sf.blnMovY" scale = "1" opacity = "1"]
	[endkeyframe]

;***********************************************************


;メッセージレイヤ出現アニメ。
;msgApr****************************************************

*msgApr
	[keyframe name = "msgApr"]
		[frame p = "0%" scale = "0"]
		[frame p = "100%" x = "&sf.blnMovX" y = "&sf.blnMovY" scale = "1"]
	[endkeyframe]

;***********************************************************


;せり上がりの移動量。
;blnMovUp****************************************************

*blnMovUp
	[keyframe name = "blnMovUp"]
		[frame p = "100%" x = "&sf.blnMovUpAddX"  y = "&sf.blnMovUpAddY" rotate = "5deg" scale = "0.9"]
	[endkeyframe]

;***********************************************************
