class Task < ApplicationRecord
    #contentのバリデーション
    validates :content, presence: true, length: { maximum: 255 }
    #statuのバリデーション
    validates statu, presence: true, length: { maximum: 10 }
end
