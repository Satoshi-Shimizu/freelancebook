class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items
  belongs_to :usertype
  has_one :userprofile
  has_many  :items, through: :items_users
  has_one_attached :avatar
end
