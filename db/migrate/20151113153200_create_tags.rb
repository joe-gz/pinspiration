class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :board
      t.references :pin
      t.timestamps null: false
    end
  end
end
