# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# 手順

application.rb
・エラーメッセージによるレイアウト崩れを防ぐ
config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }

・エラーメッセージを日本語にする
1) application.rbへ以下記載
config.i18n.default_locale = :ja
2) ja.ymlの作成
    attributes:
        post: #モデル名
          title: タイトル #カラム名
          content: 記事内容 #カラム名
          image: 画像 #カラム名