class Dashboard < ApplicationRecord

  validates :logotype, :title, presence: true
  validates :text_1, :text_2, :text_3, presence: true
  validates :title_text_1, :title_text_2, :title_text_3,  presence: true
  validates :url_1, :url_2, :url_3, presence: true

end
