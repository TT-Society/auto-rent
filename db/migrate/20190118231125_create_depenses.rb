class CreateDepenses < ActiveRecord::Migration[5.2]
  def change
    create_table :depenses do |t|
      t.string :description
      t.float :price
      t.references :user, foreign_key: true
      t.references :rent, foreign_key: true

      t.timestamps
    end
  end
end
