class Pc < ApplicationRecord
  belongs_to :user
  belongs_to :scene
  validates :pc_name, presence: true
  validates :gender, presence: true
  validates :age, presence: true
end
