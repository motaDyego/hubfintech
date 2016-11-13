class CreateFisica < ActiveRecord::Migration
  def change
    create_table :fisica do |t|
	  t.string :CPF, limit: 11
      t.datetime :data_nascimento
      t.timestamps null: false
    end
  end
end
