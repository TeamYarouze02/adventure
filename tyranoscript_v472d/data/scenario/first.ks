;***********************************************************
;
;	�u�O���b�\���ƃA�C�f�B�[���i���j�v
;
;		Date	: 2018/11/12
;		Ver  	: 0.00
;
;		Author	: yarouze
;
;***********************************************************

;��ԍŏ��ɌĂяo�����t�@�C��
[title name = "�O���b�\���ƃA�C�f�B�[���i���j"]

[stop_keyconfig]

;�e�B���m�X�N���v�g���W���ŗp�ӂ��Ă���֗��ȃ��C�u�����Q
;�R���t�B�O�ACG�A��z���[�h���g���ꍇ�͕K�{
[call storage = "tyrano.ks"]

;�Q�[���ŕK���K�v�ȏ����������͂��̃t�@�C���ɋL�q����B
;js�ǂݍ��݁B�t�H���_��؂����ꍇothers�ȉ����w�肵�Ă��K�v����B
[call storage = "macro.ks"]
;�L�[�t���[���A�j���[�V������`�t�@�C���ǂݍ��݁B
[call storage = "anime.ks"]

;�t�H���g�ύX
[deffont face = "�����ۂ�A���`�b�NMedium"]
[resetfont]

;���b�Z�[�W�{�b�N�X�͔�\��
[layopt layer = "message" visible = "false"]

;�ŏ��͉E���̃��j���[�{�^�����\���ɂ���
[hidemenubutton]


;***********************************************************
;
;�v���O�C��
;
;***********************************************************

;tempura_camera�v���O�C��
;[plugin name=tempura_camera layer=0,1,2,3,4,5 manager=true]

;for�v���O�C��
[plugin name = "for"]

;***********************************************************
;
;�N�����V�X�e���ϐ�
;
;***********************************************************

;�X�R�A�p�V�X�e���ϐ� sf.score
;�����X�R�A:1000000000
;�J���X�g:99999999999
[eval exp = "sf.score = 100000000000"]

;�����o�������ʒu
;�O���b�\������
[eval exp = "tf.GRISSOM_BLNINITY = 500"] 
[eval exp = "tf.GRISSOM_BLNINITX = 500"] 

;�A�C�f�B�[��
[eval exp = "tf.IDEEN_BLNINITY = 600"] 
[eval exp = "tf.IDEEN_BLNINITX = 400"] 

;�����o���p�e��ϐ�
;�����o���C���f�b�N�X�ԍ�
[eval exp = "sf.blnIndex = 1"]
;���b�Z�[�W���C���C���f�b�N�X�ԍ�
[eval exp = "sf.mesIndex = 0"]
;���b�Z�[�W���C������
[eval exp = "sf.mesName"]
;�����o���I�u�W�F�N�g���̊i�[�p�ϐ�
[eval exp = "sf.blnName"]
;�����o�����W�i�[�p�A�z�z��
[eval exp = "sf.blnArray = {}"]
;�����o���o���ړ����W�i�[�p
[eval exp = "sf.blnMovX = 0"]
[eval exp = "sf.blnMovY = 0"]
;�����o�������グ�ړ����W�i�[�p
[eval exp = "sf.blnMovUpAddX = 0"]
[eval exp = "sf.blnMovUpAddY = 0"]

;�����o���̍��E�U��(�����x���W�Ɋ|����)
[eval exp = "tf.blnShake = -1"]

;�񓚉\�� sf.comm
;�f�t�H���g:3
;�ő�:�����i�l��-1�j
[eval exp = "sf.comm = 3"]

;�^�C�g����ʂֈړ�
;[jump storage=title.ks]
[jump storage = "scene1.ks"]

[s]
