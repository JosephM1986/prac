# frozen_string_literal: true

class Person < ApplicationRecord
  has_many :organsation

  validates :first_name, presence: true, length: { minimum: 2 }

  def self.search(search)
    if search
      # refactored where statement as it was dry before and breaking on certain names
      where('first_name LIKE ? OR last_name LIKE ?', "%#{search}", "%#{search}")

      # where('title LIKE ?', "%#{search}")
    else
      all
    end
  end
end
