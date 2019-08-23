# frozen_string_literal: true

class Organisation < ApplicationRecord
  belongs_to :people

  # def self.search(searches)
  #   if searches
  #     where('title LIKE ?', "%#{searches}")
  #   else
  #     all
  #   end
  # end
end
