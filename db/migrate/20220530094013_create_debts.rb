class CreateDebts < ActiveRecord::Migration[6.1]
  def change
    create_table :debts do |t|
      t.decimal :mortgage
      t.decimal :restaurants
      t.decimal :rent
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
