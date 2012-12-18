class AddMoistureAsFloat < ActiveRecord::Migration
  def up
    change_table :moistures do |t|
      t.float :moisture
    end
  end

  def down
    change_table :moistures do |t|
      t.remove :moisture
    end
  end
end
