class AddOrganisationIdToPerson < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :organisation_id, :integer
  end
end
