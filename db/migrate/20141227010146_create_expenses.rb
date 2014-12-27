class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.references :category, index: true
      t.date :date
      t.string :concept
      t.decimal :amount

      t.timestamps
    end
  end
end
