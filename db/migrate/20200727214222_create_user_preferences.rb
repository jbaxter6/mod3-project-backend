class CreateUserPreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :user_preferences do |t|

      t.timestamps
    end
  end
end
