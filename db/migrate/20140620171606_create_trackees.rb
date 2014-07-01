class CreateTrackees < ActiveRecord::Migration
  def change
    create_table :trackees do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
