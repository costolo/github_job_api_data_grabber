class CreateCities < ActiveRecord::Migration
  def change
    enable_extension 'hstore'

    create_table :cities do |t|
      t.string :name
      t.integer :number_of_jobs
      t.hstore :frequency, default: {}
    end      
  end
end
