# Studio Grep

特定ディレクトリ以下のファイルを grep するだけのしょぼい Sinatra app 

## Prerequisites

* Ruby 2.0 or later

## Installation

```bash
$ git clone https://github.com/sonots/studio_grep.git
$ cd studio_grep
$ bundle
$ bundle exec foreman start
```

Then see `http://localhost:3104/`. 

## Configure

.env ファイルを編集して検索対象のディレクトリを指定します。

```
PORT=3104
HOST=0.0.0.0
TARGET_DIR={the target directory to grep}
```

## 注意事項

1. Web プロセスで grep コマンド打ってるだけなのでレスポンスが返ってくるまで固まります
2. さらにその間 Web プロセスが占有されるので、他のアクセスを捌けません（正確にはでフォルトでは最大で４つまでいけます)

## ToDo

* Asynchronous Grep
* Use full text search engine such as mroonga, elasticsearch instead of grep

## ChangeLog

See [CHANGELOG.md](CHANGELOG.md) for details.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new [Pull Request](../../pull/new/master)

## Copyright

Copyright (c) 2014 Naotoshi Seo. See [LICENSE](LICENSE) for details.

## Dedication

This app is dedicated to [@studio3104](https://github.com/studio3104).
