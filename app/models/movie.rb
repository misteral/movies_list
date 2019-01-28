class Movie < ApplicationRecord
  validates :name, length: { maximum: 80 }
  validates :year, length: { is: 4 }
  validates :director, length: { maximum: 60 }
  validates :main_star, length: { maximum: 60 }
  validates :description, length: { maximum: 400 }

  validates :name, :gentres, :year, presence: true
  has_and_belongs_to_many :gentres
  has_and_belongs_to_many :users

  def favorites_count
    users.count
  end
end
