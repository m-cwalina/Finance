class CreateIncomes < ActiveRecord::Migration[6.1]
  def change
    create_table :incomes do |t|
      t.decimal :salary
      t.decimal :stocks
      t.decimal :passive
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
