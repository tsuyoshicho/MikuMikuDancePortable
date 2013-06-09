MikuMikuDance Portable
======================

ターゲットバージョン
----------------------
* MikuMikuDance 7.39m
* MikuMikuDance x64 上記と同時更新されたもの

手順
----
(まだ作業中)

1. 各ランチャ作成環境をルートとして、PortableApps Launcherでランチャを作成。
2. リリース環境に実行ファイル両方をコピー(help.htmlはどちらかのでよい)
3. MMD/MMDx64/MME/DxOpenNI/MoggDxOpenNIをリリース環境にツリーにあるように配置(readmeなど)、実行ファイル自体はMikuMikuDance/MikuMikuDancex64にセットする、ただし現状ではユーザーモデルは入れない(UserFileディレクトリごと入れない)
4. EULA.txt/help.htmlの記述を入れるを更新。ツールのReadmeから転写
5. リリース環境をルートとして、PortableApps Installerでインストーラを作成
6. インストーラがルートにできる

ディレクトリ構成
----------------

- (root)
    - Installer Env.(32/64)
        - App
    - Release Env.
        - App

> root  
├─Installer Environment 32bit  
│  └─App  
│      ├─AppInfo  
│      │  └─Launcher  
│      ├─DefaultData  
│      └─MikuMikuDance  
├─Installer Environment 64bit  
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
    │  │  ├─DxOpenNI  
    │  │  ├─MMD  
    │  │  ├─MME  
    │  │  └─MoggDxOpenNI  
    │  └─MikuMikuDancex64  
    │      ├─MMD  
    │      └─MME  
    ├─Data  
    └─Other  
        └─Source  
            ├─DxOpenNI  
            └─MoggDxOpenNI  

