# frozen_string_literal: true

class Organisation < ApplicationRecord
  has_many :person

  # def self.search(searches)
  #   if searches
  #     where('title LIKE ?', "%#{searches}")
  #   else
  #     all
  #   end
  # end
end
