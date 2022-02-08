class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :movie_id
      t.string :person_id
      t.timestamps
    end
  end
end
