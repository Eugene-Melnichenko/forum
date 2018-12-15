class Film < ApplicationRecord

  validates :title, :url, presence: true

end
