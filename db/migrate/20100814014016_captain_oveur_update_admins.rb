class CaptainOveurUpdateAdmins < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.boolean :admin, :default => false, :null => false
    end
  end

  def self.down
    change_table(:users) do |t|
      t.remove :admin
    end
  end
end
