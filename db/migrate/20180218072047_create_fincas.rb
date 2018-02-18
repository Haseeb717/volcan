class CreateFincas < ActiveRecord::Migration[5.0]
  def change
    create_table :fincas do |t|
      t.references :region, foreign_key: true
      t.references :soil, foreign_key: true
      t.references :variety, foreign_key: true
      t.references :altitude, foreign_key: true
      t.text :notes
      t.string :finca

      t.timestamps
    end
  end
end
