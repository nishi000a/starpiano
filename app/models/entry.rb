class Entry < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  belongs_to :room
end
