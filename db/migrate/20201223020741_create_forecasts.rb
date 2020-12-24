class CreateForecasts < ActiveRecord::Migration[6.0]
  def change
    create_table :forecasts do |t|
      t.string :location
      t.integer :wind
      t.string :description
      t.integer :min_temp
      t.integer :max_temp

      t.timestamps
    end
  end
end
