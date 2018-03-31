# == Schema Information
#
# Table name: students
#
#  id            :integer          not null, primary key
#  name          :text
#  phone         :text
#  dob           :date
#  instructor_id :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Student < ApplicationRecord
  has_many :performances
  belongs_to :user, :optional => true
  belongs_to :instructor, :optional => true
end
