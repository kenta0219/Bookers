class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :books, dependent: :destroy

  attachment :profile_image
  validates :name, presence: true, uniqueness: true, length: {in: 2..50}
  validates :introduction, presence: true, length: {maximum: 50}, on: :update
  


end
