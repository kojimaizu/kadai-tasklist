class Task < ApplicationRecord
    #contentのバリデーション
    validates :content, presence: true, length: { maximum: 255 }
end
