class User < ApplicationRecord
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :username, length: { maximum: 20 }
  validates :username, format: { with: /\A[_A-Za-z0-9]+\z/,
                                 message: 'only allows letters, number and underscore' }
end
