class JobsController < ApplicationController
  def index
    @cities = ["san francisco", "new york", "boston", "boulder", "chicago", "los angeles", "denver"]
    @languages = ["c#", "c++", "php", "java", "ruby", "scala", "python", "javascript", "objective-c"]
  end
end