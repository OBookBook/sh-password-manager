# パスワードマネージャー

シェルスクリプトを使用して、IDとパスワードを簡単に管理できます。

## 入力の制約

- 文字数制限なし。
- 英数字、特殊文字可。

## 使用方法

▼呼び出し

```bash
./password_manager.sh
```

▼アウトプット

```bash
パスワードマネージャーへようこそ！
次の選択肢から入力してください(Add Password/Get Password/Exit)：

# Add Password が入力された場合
サービス名を入力してください：
ユーザー名を入力してください：
パスワードを入力してください：

パスワードの追加は成功しました。
次の選択肢から入力してください(Add Password/Get Password/Exit)：

# Get Password が入力された場合
サービス名を入力してください：
## サービス名が保存されていなかった場合
そのサービスは登録されていません。
## サービス名が保存されていた場合
サービス名：hoge
ユーザー名：fuga
パスワード：piyo

次の選択肢から入力してください(Add Password/Get Password/Exit)：

# Exit が入力された場合
Thank you!
## プログラムが終了

# Add Password/Get Password/Exit 以外が入力された場合
入力が間違えています。Add Password/Get Password/Exit から入力してください。
```

## パスワードデータ

入力情報は "サービス名:ユーザー名:パスワード" の形式で `./data/passwords.txt` に保存されます。
以下はパスワードデータの例です。

```bash
Gmail:JohnDoe:Pa$$w0rd
Facebook:JaneSmith:SecureP@ss
Twitter:DavidBrown:Tw33tM3
Instagram:AliceJohnson:Inst@Gram
LinkedIn:MichaelLee:Pr0f3ss1onal
Netflix:SusanWilliams:Str34m1ng!
Amazon:ChrisJones:BuyM0r3$!
Dropbox:LauraClark:Cl0udDr0p
Spotify:MarkTaylor:MusiC4Life
Airbnb:EmilyWhite:Tr@v3l2023
```
