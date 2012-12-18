class CreateMoistures < ActiveRecord::Migration
  def change
    create_table :moistures do |t|
      t.decimal :value

      t.timestamps
    end
  end
end
