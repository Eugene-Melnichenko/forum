class Message < ApplicationRecord
  #validates :message, :email, presence: true

  belongs_to :user
end
