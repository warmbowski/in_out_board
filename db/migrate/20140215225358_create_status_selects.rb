class CreateStatusSelects < ActiveRecord::Migration
  def change
    create_table :status_selects do |t|
      t.string :status
      t.string :status_type
      t.integer :icon

      t.timestamps
    end
  end
end
