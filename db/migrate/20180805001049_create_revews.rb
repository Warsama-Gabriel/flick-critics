class CreateRevews < ActiveRecord::Migration[5.2]
  def change
    create_table :revews do |t|
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
