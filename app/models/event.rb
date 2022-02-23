class Event < ApplicationRecord
  has_many :users
  validates :title, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :duration, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
