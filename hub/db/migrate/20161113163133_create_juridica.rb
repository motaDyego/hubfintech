class CreateJuridica < ActiveRecord::Migration
  def change
    create_table :juridica do |t|
	  t.string :CNPJ, limit: 14
      t.string :razao_social, limit: 70
      t.timestamps null: false
    end
  end
end
