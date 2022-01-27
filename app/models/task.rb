class Task < ApplicationRecord
    belongs_to :user
    
    #contentのバリデーション
    validates :content, presence: true, length: { maximum: 255 }
    #statuのバリデーション
    validates :status, presence: true, length: { maximum: 10 }
end
