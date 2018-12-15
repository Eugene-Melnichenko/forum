class Term < ApplicationRecord
  
  validates :title, :text, presence: true
  
  #Для поиска
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end

end
