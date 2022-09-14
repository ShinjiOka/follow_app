参考記事
・https://www.youtube.com/watch?v=gATeEnr8gh4
・https://github.com/FarStep131/template_for_rails6/blob/main/template_for_rails6.rb
・https://github.com/FarStep131/follow_app/commit/0a9ccff3c2fc06ec9fdae22df54522ad52abe692

deviseインストール手順
・https://qiita.com/Pirori3182/items/afd1604cb0d206b2e3cc

マイグレーションファイルの説明
・https://pikawaka.com/rails/migration ← 未読

アソシエーションの説明
・https://pikawaka.com/rails/association

JavaScriptとbootstrapの環境構築
・https://zenn.dev/yubel/articles/0106422714ec3e

buildメソッド
・https://techtechmedia.com/build-method-rails/

renderの使い方
・https://ichigick.com/missing-template-error/

===========================================================================

エラー

うまくログアウトできなかったので参考にした記事
・http://www.code-magagine.com/?p=9168
devise_scope :user do
get '/users/sign_out' => 'devise/sessions#destroy'
end
上記のコードをroutes.rbに記述するとうまくログアウトできるようになる。

postリクエストがgetリクエストになる
・https://ichigick.com/no-route-matches/