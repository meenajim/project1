# == Schema Information
#
# Table name: instructors
#
#  id            :integer          not null, primary key
#  name          :text
#  qualification :text
#  instrument    :text
#  description   :text
#  likes         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  photo         :text
#

class Instructor < ApplicationRecord
  has_many :students
  has_many :likes
  def name_with_instrument
    "#{name} | #{instrument}"
  end
end
