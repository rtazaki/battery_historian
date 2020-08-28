# battery_historian
- 公式の使い方だと、UTCでしか動かないため、JST対応した環境を構築する。

## 動作確認環境
- Windows10 Pro 1909
- Docker Desktop
    - 2.3.0.4(46911)
    - stable

## 使い方
1. Dockerインストール
1. エクスプローラーからbt.cmdを実行
1. localhost:9999をブラウザから起動
1. (終了時) エクスプローラーからbt_stop.cmdを実行

## 詳細
1. `docker build -t battery_historian_jsttime .`
    - Dockerfileを読み取り、battery_historian_jsttimeを作成。
    - (tzdataをとってきて、jstにする)
1. `docker-compose up -d bt`
    - docker-compose.ymlを使い、サービスbtを起動。
1. `docker-compose stop bt`
    - docker-compose.ymlを使い、サービスbtを停止。
1. `docker system prune -f`
    - 不要なDockerオブジェクトを削除。
    - https://docs.docker.jp/config/pruning.html

## adb関係
- battery_historianはadb結果のビューアーなので、adbできないと意味がない。

### 実機デバッグ
- 実機を開発者モードにする→USBデバッグ有効化

### コマンド一覧
```
adb kill-server
adb devices
adb shell dumpsys batterystats --reset
adb bugreport
```
