class RemoveAllergicToFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :allergic_to, :string
  end
end
