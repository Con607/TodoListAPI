class Item < ApplicationRecord
  validates :name, presence: true

  belongs_to :todo



end
