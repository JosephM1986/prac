class AddOrganisationIdToPerson < ActiveRecord::Migration[5.2]
  def change
    add_reference :people, :organisation_id, foreign_key: true
  end
end
