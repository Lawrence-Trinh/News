class Post < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  validates :user_id, presence: true
  has_many :comments, as: :commentable, dependent: :destroy
end
