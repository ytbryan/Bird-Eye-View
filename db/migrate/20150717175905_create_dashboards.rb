class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.integer :user_id
      t.references :user, index: true, foreign_key: true
      t.string :website
      t.integer :total_count

      t.timestamps null: false
    end
  end
end
