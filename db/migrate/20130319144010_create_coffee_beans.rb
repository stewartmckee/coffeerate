class CreateCoffeeBeans < ActiveRecord::Migration
  def change
    create_table :coffee_beans do |t|
      t.string :name
      t.integer :supplier_id
      t.text :description

      t.timestamps
    end
  end
end
