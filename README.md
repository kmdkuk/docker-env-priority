# docker-env-priority
Dockerの環境変数の優先順位の調査

## 環境変数の設定方法

- `docker run`の`--env-file`オプションによる指定
- `docker run`の`-e`による指定
- ビルド時にコマンド引数で渡す 例：`docker build --build-arg [ hoge=value ] .`
- Dockerfile内で`ENV`命令を使う
- ファイルを渡して，別途スクリプトなどでファイルを読み込む
- `docker-compose run`コマンドの`-e`オプションによる指定
- `docker-compose.yml`ファイルに`environment:`で指定
- `docker-compose.yml`ファイルに`env_file:`でenvファイルのパスを指定

