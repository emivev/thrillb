class AddStartdateAndEnddateAndAdultAndChildrenToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :startdate, :string
    add_column :messages, :enddate, :string
    add_column :messages, :adult, :string
    add_column :messages, :children, :string
  end
end
