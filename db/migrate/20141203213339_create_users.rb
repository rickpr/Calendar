class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :netid
      t.string :name
      t.boolean :private

      t.timestamps
    end
  end
end
