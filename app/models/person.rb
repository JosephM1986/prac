class Person < ApplicationRecord
  has_many :organsation


  def self.search(search)
    where("name LIKE ?  OR last LIKE ?", "%#{search}", "%#{search}")
  end
end
