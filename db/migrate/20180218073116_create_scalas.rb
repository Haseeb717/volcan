class CreateScalas < ActiveRecord::Migration[5.0]
  def change
    create_table :scalas do |t|
      t.references :finca, foreign_key: true
      t.datetime :harvested
      t.integer :qqt
      t.string :paid

      t.timestamps
    end
  end
end
