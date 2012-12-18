class ChangeMoistures < ActiveRecord::Migration
  def up
    Moisture.connection.execute("update Moistures set moisture = cast(value as decimal)")
    change_table :moistures do |t|
      t.remove :value
    end
  end

  def down
    Moisture.connection.execute("update Moistures set value = cast(moisture as string)")
    change_table :moistures do |t|
      t.string :value
    end
  end
end
