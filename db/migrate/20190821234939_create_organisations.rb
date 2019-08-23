# frozen_string_literal: true

class CreateOrganisations < ActiveRecord::Migration[5.2]
  def change
    create_table :organisations do |t|
      t.string :title
      t.text :location

      t.timestamps
    end
  end
end
