class CreateDeveloperProjects < ActiveRecord::Migration
  def change
    create_table :developer_projects do |t|
      t.integer :developer_id
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
