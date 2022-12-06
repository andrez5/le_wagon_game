class Pc < ApplicationRecord
  belongs_to :user
  belongs_to :scene
  validates :pc_name, presence: true
  validates :gender, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 1 }, presence: true
  GENDERS = ["Homem", "Mulher", "Outros"]
  # validates :pc_name, presence: { error_message: "Email can't be blank" }
end
