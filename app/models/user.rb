class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  enum role: {
    technician: 0,
    co_investigator: 1,
    principal_investigator: 2,
  }
end
