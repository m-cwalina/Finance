class AddAmountToIncomes < ActiveRecord::Migration[6.1]
  def change
    add_column :incomes, :amount, :decimal
  end
end
