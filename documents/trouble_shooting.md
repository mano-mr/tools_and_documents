# エラー対応

## 環境構築

### App Sandboxの設定変更
```
may have been in progress in another thread when fork() was called. We cannot safely call it or ignore it in the fork() child process. Crashing instead. Set a breakpoint on objc_initializeAfterForkError to debug.
```

上のエラーが出たら~/.bash_profileに以下の行を追加します。

```
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
```

## Xcode

### iPhoneアプリのキャッシュを削除

```
xcrun simctl erase all
```

### iPhoneアプリのビルドを削除


```
rm -rf ios/build
```

