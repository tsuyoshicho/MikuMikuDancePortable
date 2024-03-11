MikuMikuDance Portable
======================

**This repository has been archived**

Licence
-------

Launcher/Installer
GPLv3

nkf32
zlib/libpng License
http://hp.vector.co.jp/authors/VA007219/

現在のターゲットバージョン
--------------------------
* MikuMikuDance Ver.9.26
* MikuMikuDance x64 Ver.9.26
* MME Ver.0.37
* MoggDxOpenNI Ver.0.5.6

手順
----
0. PortableAppsからInstaller,Launcher,NSISが必要になるので、セットアップしておく。
1. 各ランチャ作成環境をルートとして、PortableApps Launcherでランチャを作成。
2. リリース環境に実行ファイル両方をコピー。(一度作成しておけば更新されないかぎりはそのままでよい)
3. MMD/MMDx64/MME/DxOpenNI/MoggDxOpenNIをリリース環境にツリーにあるように配置(readmeなど)、実行ファイル自体はMikuMikuDance/MikuMikuDancex64にセットする、ただし現状ではユーザーモデルは入れない(UserFileディレクトリごと入れない)。
4. EULA.txt/help.htmlの記述を更新。ツールのReadmeから転写。
5. リリース環境をルートとして、PortableApps Installerでインストーラを作成。
6. インストーラがルートにできる。

更新の場合

1. README.mdの利用バージョンを更新
2. appinfo.iniのアプリバージョン更新(一応Launcher Env.のそれぞれも)
3. ファイル配置
4. release_doc_gen.bat実行(EULA.txtやhelp.html確認)

ディレクトリ構成
----------------

<pre>
(root)
├─Launcher Environment 32bit
│  └─App
│      ├─AppInfo
│      │  └─Launcher
│      ├─DefaultData
│      └─MikuMikuDance
├─Launcher Environment 64bit
│  └─App
│      ├─AppInfo
│      │  └─Launcher
│      ├─DefaultData
│      └─MikuMikuDancex64
└─Release Environment
    ├─App
    │  ├─AppInfo
    │  │  └─Launcher
    │  ├─DefaultData
    │  ├─MikuMikuDance
    │  │  ├─Data
    │  │  │  └─(ja)
    │  │  ├─DxOpenNI
    │  │  ├─MMD
    │  │  ├─MME
    │  │  └─MoggDxOpenNI
    │  └─MikuMikuDancex64
    │     ├─Data
    │     ├─MMD
    │     └─MME
    ├─Data
    └─Other
        └─Source
            ├─DxOpenNI
            └─MoggDxOpenNI
</pre>

補足情報
--------
* MMDにおいて、ユーザーモデルのディレクトリ探索順序は
  1. ファイル名からUserFileという文字以降を、MMDがあるフォルダ下のUserFileのpathに足した場所を探す 
  2. デフォルトフォルダを探す 
  3. 絶対path
  
  として探すので、意図的に削除する仕様
* VCのランタイムは同梱していないので、PAsアプリとしては起動しない場合がある(制限)


オリジナル作者様URL
-------------------
* MMD 樋口M氏 http://www.geocities.jp/higuchuu4/index.htm
* MME 舞力介入P氏 http://www6.atwiki.jp/vpvpwiki/pages/219.html (MMEダウンロードURL)
* MoggOpenNI Mogg氏 https://sites.google.com/site/moggproject/
* ロゴ donburiroom氏 http://www.nicovideo.jp/user/2842434
* (参考)各種モデル VPVPwiki http://www6.atwiki.jp/vpvpwiki

リポジトリ公開者によるバイナリ公開URL(あまり推奨しません)
---------------------------------------------------------
https://github.com/tsuyoshicho/MikuMikuDancePortable/releases
