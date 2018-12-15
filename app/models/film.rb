class Film < ApplicationRecord

  validates :title, :url, presence: true

  validates :title, confirmation: { case_sensitive: false }

  validates :url, :format => URI::regexp(%w(http https))

  #Для поиска
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end

end
