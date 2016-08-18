class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.string :client_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
