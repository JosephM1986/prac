# frozen_string_literal: true

class AddOrganisationIdToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :organisation_id, :integer
    add_foreign_key :people, :organisations
  end
end
