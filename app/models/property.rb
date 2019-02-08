class Property < ApplicationRecord
  has_many :stations
  accepts_nested_attributes_for :stations
  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :age, presence: true
  validates :content, presence: true
end
