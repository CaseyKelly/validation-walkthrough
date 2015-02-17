class User < ActiveRecord::Base
  hes_secure_password

  validates :email, presence: true
end
