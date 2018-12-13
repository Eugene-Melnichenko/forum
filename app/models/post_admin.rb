class PostAdmin < ApplicationRecord

  validates :title, :summary, :body, presence: true

end
