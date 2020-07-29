class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name  
      t.integer :age
      t.string :gender
      t.string :smoker
      t.string :has_kids
      t.text :tagline
      t.string :image
      t.timestamps
    end
  end
end
