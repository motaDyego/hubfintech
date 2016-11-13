class CreatePessoa < ActiveRecord::Migration
  def change
    create_table :pessoa do |t|
	  t.string :nome, limit: 50 
	  t.string :type     
      t.timestamps null: false
    end
  end
end
