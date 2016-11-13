class AddColumnPaiIdToContas < ActiveRecord::Migration
  def change
    add_column :conta, :pai_id, :integer
  end
end
