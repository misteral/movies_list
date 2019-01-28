class Gentre < ApplicationRecord
  validates :name, length: { maximum: 80 }
  has_many :gentres
end
