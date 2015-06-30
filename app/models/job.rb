class Job < ActiveRecord::Base
  validates_presence_of :location, :description

  def self.get_jobs
    jobs = []
    url = "https://jobs.github.com/positions.json?location="
    cities = ["san+francisco", "new+york", "boston", "boulder", "chicago", "los+angeles", "denver"]
    cities.each do |city|
      github_response = HTTParty.get(url + city)
      while github_response.parsed_response == []
        github_response = HTTParty.get(url + city)
      end
      jobs << github_response.parsed_response
    end
    jobs
  end

  def self.save_jobs
    job_city_collection = Job.get_jobs
    job_city_collection.each do |collection|
      collection.each do |job|
        Job.create(location: job["location"], description: job["description"])
      end
    end
  end
end
