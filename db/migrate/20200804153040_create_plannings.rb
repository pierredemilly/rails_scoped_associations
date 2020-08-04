class CreatePlannings < ActiveRecord::Migration[5.2]
  def change
    create_table :plannings do |t|
      t.integer :institution_id, index: true
      t.string :name

      t.datetime :activated_at, index: true
      t.boolean :real, default: true, index: true

      t.timestamps
    end
  end
end
