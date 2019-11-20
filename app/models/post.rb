class Post < ApplicationRecord
  # バリデーションの設定
  validates :title,   presence: true, length: {minimum: 3 ,message: "タイトルが短すぎます"} # 必須かつ文字制限
  validates :content, presence: true
  validates :image, presence: true
end
