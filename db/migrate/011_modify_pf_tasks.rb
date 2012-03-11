class ModifyPfTasks< ActiveRecord::Migration
  def self.up
   rename_table :tasks, :pf_tasks
  end
  
  def self.down
    rename_table :pf_tasks, :tasks
  end  
end