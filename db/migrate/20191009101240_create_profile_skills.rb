class CreateProfileSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_skills do |t|
      t.references :profile, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
