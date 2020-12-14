class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :major
      t.string :degree_type
      t.string :academic_year
      t.belongs_to :user
      t.timestamps
    end
  end
end
