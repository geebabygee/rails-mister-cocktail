class RemoveNameFromDose < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :name, :string
  end
end
