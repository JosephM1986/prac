# frozen_string_literal: true

class Person < ApplicationRecord
  has_many :organsations
  validates :assessment_count, length: { is: 1 }, allow_blank: true
  validates :first_name, presence: true, if: :should_validate

  def should_validate?
    new_record || first_name.present?
  end

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
