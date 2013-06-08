MikuMikuDance Portable
======================

手順
----
(まだ作業中)

1. 各ランチャ作成環境をルートとして、PortableApps Launcherでランチャを作成
2. リリース環境に実行ファイル両方をコピー
3. MMD/MMDx64 ...をリリース環境に以下のように配置
4. リリース環境をルートとして、PortableApps Installerでインストーラを作成

5. インストーラがルートにできる

ディレクトリ構成
----------------

- (root)
    - Installer Env.(32/64)
        - App
    - Release Env.
        - App

> root  
> ├─Installer Environment 32bit  
> │  └─App  
> │      ├─AppInfo  
> │      │  └─Launcher  
> │      ├─DefaultData  
> │      └─MikuMikuDance  
> ├─Installer Environment 64bit  
> │  └─App  
> │      ├─AppInfo  
> │      │  └─Launcher  
> │      ├─DefaultData  
> │      └─MikuMikuDancex64  
> └─Release Environment  
>     ├─App  
>     │  ├─AppInfo  
>     │  │  └─Launcher  
>     │  ├─DefaultData  
>     │  ├─MikuMikuDance  
>     │  ├─MikuMikuDancex64  
>     │  ├─MMD  
>     │  ├─MME  
>     │  └─MoggDxOpenNI  
>     ├─Data  
>     └─Other  
>         └─Source  
>             ├─DxOpenNI  
>             └─MoggDxOpenNI  

