class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.boolean :in_out
      t.boolean :on_off
      t.integer :status_select_id
      t.string :current_location
      t.datetime :return
      t.integer :employee_id

      t.timestamps
    end
  end
end
