# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

# アプリ名（なんでもOK）
set :application, "aquaflexcustomer"

# GitHubリポジトリ情報
set :repo_url, "git@github.kosetomonori/test.git"

# ユーザーはdeployにする
set :user, "aquaflex"

# rbenvをユーザーレベルでインストール
set :rbenv_type, :system

# rubyのバージョンを指定
set :rbenv_ruby, File.read('.ruby-2.7.4').strip
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"

# 並列数
set :bundle_jobs, 2

# リリース間で共有するリソースのファイルパスを書く
append :linked_files, "config/master.key"

# 各リリースが共通で読み込むディレクトリを設定する
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets",  '.bundle'