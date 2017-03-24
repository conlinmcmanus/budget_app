class User < ApplicationRecord
  has_many :monthly_budgets
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
