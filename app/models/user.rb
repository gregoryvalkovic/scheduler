class User < ApplicationRecord
  has_many :events, dependent: :delete_all
  has_many :user_groups
  has_many :groups, through: :user_groups

  #has_secure_password

end
