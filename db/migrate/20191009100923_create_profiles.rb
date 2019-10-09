class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :description
      t.string :role

      t.timestamps
    end
  end
end
