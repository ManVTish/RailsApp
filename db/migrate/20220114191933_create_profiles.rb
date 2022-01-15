class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :job_title
      t.string :total_experience
      t.string :career_highlights
      t.string :primary_skills
      t.bigint :user_id

      t.timestamps
    end
  end
end
