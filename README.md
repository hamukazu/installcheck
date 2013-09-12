# InstallCheck

## Description�i�T�v�j

This program detects if there is a erased file in a specified directory.

���̃v���O�����́A�w�肵���f�B���N�g�����ɏ����ꂽ�t�@�C�������邩�����o���܂��B

## Motivation�i���@�j

In a workshop style class in a university, it is sometimes annoying to handle the problem accompanied with an accidental erase of necessary files by a incautious student.
This tool is intended to check quickly if a file is deleted in a specified directory.

���K�X�^�C���̎��ƂŁA�s���ӂȊw�����K�v�ȃt�@�C�������������Ƃɂ��g���u�����悭�����ăC���C�����Ă܂����B���̃c�[���͎w�肵���f�B���N�g�����Ńt�@�C���������ꂽ���ǂ�����f�����`�F�b�N���邽�߂ɍ���܂����B

## Usage�i�g�����j

Type the command as follows:
    ruby installcheckgen.rb path-to-remember
Then the file "installcheck.rb" is created. Note that file names of all the files in the path specified is embedded in it with compression. 
Now type the command as follows:
  ruby installcheck.rb
It says "OK" if no file deletion is detected, and says "Broken" otherwise. It does not tell any additional information.

�R�}���h���C�����玟�̂悤�ɓ��͂��܂�
    ruby installcheckgen.rb path-to-remember
�����"installcheck.rb"�Ƃ����t�@�C�����ł��܂��B�w�肵���p�X�Ɋ܂܂��t�@�C�����̈ꗗ�����̒��Ɋ܂܂�Ă��܂��B
���ɁA���̂悤�ɓ��͂��܂��B
  ruby installcheck.rb
���������ꂽ�t�@�C�����Ȃ����"OK"�Əo�͂��܂��B�����łȂ����"Broken"�Əo�͂���܂��B����ȏ�̏��͂Ȃɂ��\������܂���B