class Job < ActiveRecord::Base
  validates_presence_of :location, :description
end