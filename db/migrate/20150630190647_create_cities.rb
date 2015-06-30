class CreateCities < ActiveRecord::Migration
  def change
    enable_extension 'hstore'

    create_table :cities do |t|
      t.string :name
      t.integer :number_of_jobs
      t.hstore :frequency, default: {
        "ruby" => 0,
        "python" => 0,
        "c++" => 0,
        "scala" => 0,
        "java" => 0,
        "javascript" => 0,
        "php" => 0,
        "objective-c" => 0,
        "c#" => 0
      }
    end      
  end
end
