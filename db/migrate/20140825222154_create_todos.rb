class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.string :description
      t.boolean :completed
      t.integer :user_id

      t.timestamps
    end
    add_index :todos, [:user_id, :created_at]
  end
end
