class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|

      t.column :id, :integer , :null=>false

      t.column :action_id, :integer

      t.column :name, :string , :null=>false

      t.column :description, :text

    end
  end

  def self.down
    drop_table :tasks
  end
end
