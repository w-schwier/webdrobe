class CreateGarments < ActiveRecord::Migration[5.1]
  def change
    create_table :garments do |t|
      t.string :sort
      t.string :length
      t.text :notes

      t.timestamps
    end
  end
end
