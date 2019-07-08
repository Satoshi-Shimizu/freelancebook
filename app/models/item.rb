class Item < ApplicationRecord
  has_many    :skills
  belongs_to  :jobtype
  belongs_to  :industry
  belongs_to  :place
  belongs_to  :school
  belongs_to  :usertype
end
