class CreateVarieties < ActiveRecord::Migration[5.0]
  def change
    create_table :varieties do |t|
      t.string :title

      t.timestamps
    end
  end
end
