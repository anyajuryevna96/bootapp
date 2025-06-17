class User < ApplicationRecord
  # Devise модули (например :database_authenticatable, :registerable и т.д.)
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :daily_activities, dependent: :destroy
end
