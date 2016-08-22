class AddAssginedToToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :assigned_to, :string
  end
end
