class Person < ApplicationRecord
  has_many :organsation

  def self.search(search)
    if search
      find(:name, :coniditons => ['name LIKE ?' "%#{search}%"])
    else
      find(:name)
    end
  end
end
