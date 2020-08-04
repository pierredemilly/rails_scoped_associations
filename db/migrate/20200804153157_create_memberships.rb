class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :planning_id

      t.timestamps
    end
  end
end
