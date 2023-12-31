class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :reservation_date
      t.date :due_date
      t.references :car, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :reserve_days, default: 1
      t.float :total_amount, default: 0.0
      
      t.timestamps
    end
  end
end
