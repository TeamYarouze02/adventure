//�t�L�_�V�ړ������ŏ��E�ő�B
var blnMovXMin = -400;
var blnMovYMin = 0;

var blnMovXMax = -480;
var blnMovYMax = 160;

//�t�L�_�V�ړ��ʏ������B
var blnMovX = 0;
var blnMovY = 0;

//�t�L�_�V����オ����Z�ŏ��E�ő�
var blnMovUpXMin = 0;
var blnMovUpYMin = -100;

var blnMovUpXMax = 10;
var blnMovUpYMax = -110;

//�t�L�_�V�p�x������
var blndeg = 0;

//�t�L�_�V�ړ�����
blnMovX = Math.floor( Math.random() * (blnMovXMax - blnMovXMin)+ blnMovXMin);
blnMovY = Math.floor( Math.random() * (blnMovYMax - blnMovYMin)+ blnMovYMin);

//�t�L�_�V�㏸�ړ�����
blnMovUpX = Math.floor( Math.random() * (blnMovUpXMax - blnMovUpXMin)+ blnMovUpXMin);
blnMovUpY = Math.floor( Math.random() * (blnMovUpYMax - blnMovUpYMin)+ blnMovUpYMin);
