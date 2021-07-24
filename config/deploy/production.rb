# サーバの設定
server "aqua-flex-cust.net", user: "aquaflex", roles: %w{web db app}

# ssh接続設定
set :ssh_options, {
  user: fetch(:user),
  #port: ポート番号,
  keys: %w(C:\Users\kose.tomonori\.ssh\id_rsa),
  forward_agent: true,
  auth_methods: %w[publickey]
}