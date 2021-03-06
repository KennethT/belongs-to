class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.integer :user_id
      t.belongs_to :user, index: true
    end
    add_foreign_key :dogs, :users
  end
end
