class PostAdmin < ApplicationRecord

  validates :title, :summary, :body, presence: true

  mount_uploader :image, ImageUploader

  #Для поиска
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end

end
