class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :name
      t.text :description
      t.integer :amount

      t.timestamps
    end
  end
end
