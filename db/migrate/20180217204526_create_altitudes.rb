class CreateAltitudes < ActiveRecord::Migration[5.0]
  def change
    create_table :altitudes do |t|
      t.string :title

      t.timestamps
    end
  end
end
