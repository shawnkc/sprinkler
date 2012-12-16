class CreateMoistures < ActiveRecord::Migration
  def change
    create_table :moistures do |t|
      t.string :value

      t.timestamps
    end
  end
end
