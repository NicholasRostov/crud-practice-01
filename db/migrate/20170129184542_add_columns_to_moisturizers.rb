class AddColumnsToMoisturizers < ActiveRecord::Migration[5.0]
  def change
    add_column :moisturizers, :name, :string
    add_column :moisturizers, :intructions, :string
    add_column :moisturizers, :hpf, :integer
  end
end
