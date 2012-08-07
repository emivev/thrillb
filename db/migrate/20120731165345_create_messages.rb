class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.text :body
      t.references :trip

      t.timestamps
    end
    add_index :messages, :trip_id
  end
end
