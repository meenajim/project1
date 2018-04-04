# == Schema Information
#
# Table name: performances
#
#  id               :integer          not null, primary key
#  student_id       :integer
#  performance_date :date
#  description      :text
#  media            :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  name             :text
#

class Performance < ApplicationRecord
  belongs_to :student, :optional => true
end
