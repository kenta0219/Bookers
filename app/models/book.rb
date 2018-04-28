class Book < ApplicationRecord

	belongs_to :user
	attachment :profile_image
	validates :body, presence: true, length: {maximum: 200}

end

