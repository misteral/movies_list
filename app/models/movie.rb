class Movie < ApplicationRecord
  validates :name, length: { maximum: 80 }
  validates :year, length: { is: 4 }
  validates :director, length: { maximum: 60 }
  validates :main_star, length: { maximum: 60 }
  validates :description, length: { maximum: 400 }

  validates :name, :gentres, :year, presence: true
  validate :thumbnail_image_valid_by_filesize?
  validate :thumbnail_image_valid_by_imagesize?
  has_and_belongs_to_many :gentres
  has_and_belongs_to_many :users
  has_one_attached :thumbnail

  def favorites_count
    users.count
  end

  def thumbnail_image_valid_by_filesize?
    return unless thumbnail.attached?

    if thumbnail.blob.byte_size > 1_000_000
      errors[:base] << 'Thumbnail file too big. More than 1Mb'
    end
  end

  def thumbnail_image_valid_by_imagesize?
    return unless thumbnail.attached?

    metadata = ActiveStorage::Analyzer::ImageAnalyzer.new(thumbnail).metadata
    if metadata[:height] != 1000
      errors[:base] << 'Thumbnail file should be 1000px height.'
    end
    return if metadata[:width] >= 600 && metadata[:width] <= 800

    errors[:base] << 'Thumbnail file should be 600-800px width.'
  end
end
