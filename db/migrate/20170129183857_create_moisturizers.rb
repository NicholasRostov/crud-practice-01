class CreateMoisturizers < ActiveRecord::Migration[5.0]
  def change
    create_table :moisturizers do |t|
    
      t.timestamps
    end
  end
end
