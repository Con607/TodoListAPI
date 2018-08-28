class Todo < ApplicationRecord
  validates :title, :user_id, presence: true

  has_many :users
  has_many :items, dependent: :destroy

end
