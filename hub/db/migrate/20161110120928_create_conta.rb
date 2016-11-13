class CreateConta < ActiveRecord::Migration
  def change
    create_table :conta do |t|
      t.string :nome, limit: 50
      t.string :status, limit: 20
      t.datetime :data_criacao
      t.timestamps null: false
    end
  end
end
