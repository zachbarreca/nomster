class Place < ActiveRecord::Base
  #Associations 
  belongs_to :user
  has_many :comments
    
  geocoded_by :address
  after_validation :geocode

  #Validations
  validates :address, :description, :name, presence: true
  validates :name, length: { minimum: 3 }
end
