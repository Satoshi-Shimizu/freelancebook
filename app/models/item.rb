class Item < ApplicationRecord
  has_many    :skills
  belongs_to  :jobtype
  belongs_to  :industry
  belongs_to  :place
  belongs_to  :user
  has_many    :users, through: :goods
  has_many    :goods
  accepts_nested_attributes_for :goods
end
