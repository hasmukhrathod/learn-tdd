class Blog < ApplicationRecord
    validates :title, :body, presence: true
    enum status: [:draft, :published]
end

