class CreatePigeons < ActiveRecord::Migration[7.0]
  def change
    create_table :pigeons do |t|
      t.string :name
      t.float :age
      t.string :cuteness
      t.string :softness

      t.timestamps
    end
  end
end
