class CreateZoneEntries < ActiveRecord::Migration
  def change
    create_table :zone_entries do |t|
      t.integer :zone
      t.decimal :duration

      t.timestamps
    end
  end
end
