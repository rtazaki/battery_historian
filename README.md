# battery_historian
- 公式の使い方だと、UTCでしか動かないため、JST対応した環境を構築する。

## 動作確認環境
- Windows10 Pro 1909
- Docker Desktop
    - 2.3.0.4(46911)
    - stable

## 使い方
1. Dockerインストール
1. PowerShell -ExecutionPolicy RemoteSigned .\bt.ps1
1. localhost:9999をブラウザから起動

## 詳細
`docker build -t battery_historian_jsttime .`

- Dockerfileを読み取り、battery_historian_jsttimeを作成。
- (tzdataをとってきて、jstにする)

`docker-compose up -d bt`

- docker-compose.ymlを使い、サービスbtを起動。
- (battery_historian_jsttimeは一度作ったら以降作らない。)

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
