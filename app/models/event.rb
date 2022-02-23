class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :admin, class_name: 'User', dependent: :destroy
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :duration, presence: true
  # validates :price, presence: true
  # validates :location, presence: true
end
