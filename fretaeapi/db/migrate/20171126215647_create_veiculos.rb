class CreateVeiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :veiculos do |t|
      t.string :categoria
      t.string :cor
      t.string :marca
      t.string :modelo
      t.integer :ano

      t.timestamps
    end
  end
end
