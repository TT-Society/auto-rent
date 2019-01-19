class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.boolean :approve
      t.references :user, foreign_key: true
      t.float :price
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
