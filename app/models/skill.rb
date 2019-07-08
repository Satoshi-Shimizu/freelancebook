class Skill < ApplicationRecord
  belongs_to :language
  belongs_to :item
end
