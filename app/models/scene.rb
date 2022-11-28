class Scene < ApplicationRecord
  belongs_to :buddy
  belongs_to :user
  has_many :choices
  has_many :pcs
end
