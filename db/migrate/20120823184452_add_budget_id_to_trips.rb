class AddBudgetIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :budget_id, :integer
  end
end
