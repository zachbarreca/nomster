class Place < ActiveRecord::Base
  belongs_to :user
  validates :address, :description, :name, presence: true
  validates :name, length: { minimum: 2 }
end
