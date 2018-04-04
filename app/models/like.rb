# == Schema Information
#
# Table name: likes
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Like < ApplicationRecord

  belongs_to :instructor, :optional=>true
  belongs_to :user, :optional =>true

  validates :instructor_id, :uniqueness => {:scope => :user_id}


end
