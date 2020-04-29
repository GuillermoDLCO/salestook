class CreateVenta < ActiveRecord::Migration[6.0]
  def change
    create_table :venta do |t|
      t.string :orden
      t.integer :monto
      t.string :status
      t.references :cliente, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
