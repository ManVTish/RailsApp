class AddPictureToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :picture, :string
  end
end
