class CreatePessoas < ActiveRecord::Migration[5.1]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.string :telefone
      t.integer :veiculo

      t.timestamps
    end
  end
end
