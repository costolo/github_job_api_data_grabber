class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :location, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
