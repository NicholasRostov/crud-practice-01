class RenameInstructionsColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :moisturizers, :intructions, :instructions
  end
end
