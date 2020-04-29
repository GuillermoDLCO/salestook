class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :dni
      t.string :direccion
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
