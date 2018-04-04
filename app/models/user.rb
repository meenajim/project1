# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  email           :text
#  password_digest :string
#  phone           :text
#  user_type       :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  has_many :students
  has_many :likes

  validates :email, :presence =>true, :uniqueness =>true

end
