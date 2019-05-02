//フキダシ移動距離最小・最大。
var blnMovXMin = -400;
var blnMovYMin = 0;

var blnMovXMax = -480;
var blnMovYMax = 160;

//フキダシ移動量初期化。
var blnMovX = 0;
var blnMovY = 0;

//フキダシせり上がり加算最小・最大
var blnMovUpXMin = 0;
var blnMovUpYMin = -100;

var blnMovUpXMax = 10;
var blnMovUpYMax = -110;

//フキダシ角度初期化
var blndeg = 0;

//フキダシ移動距離
blnMovX = Math.floor( Math.random() * (blnMovXMax - blnMovXMin)+ blnMovXMin);
blnMovY = Math.floor( Math.random() * (blnMovYMax - blnMovYMin)+ blnMovYMin);

//フキダシ上昇移動距離
blnMovUpX = Math.floor( Math.random() * (blnMovUpXMax - blnMovUpXMin)+ blnMovUpXMin);
blnMovUpY = Math.floor( Math.random() * (blnMovUpYMax - blnMovUpYMin)+ blnMovUpYMin);
