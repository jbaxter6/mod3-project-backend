class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.string :sex
      t.string :both, null:false 
      t.timestamps
    end
  end
end
