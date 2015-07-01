# Validic Technical Challenge
Instructions:
* install postgresql (if necessary)
* clone repo
* rake db:create && rake db:migrate
* start the rails server
* refresh page when prompted

# Discussion
I ran into a couple challenges while working on this. The first was that Github's job's API will some times return an empty array instead of the JSON data you'd expect. The other major challenge I ran into with this was pulling a large amount of jobs data, as it's hard to differentiate between whether there are no results for the request you made or if it's just Github returning no results. Finally, the variance in descriptions made it hard to find a catch all solution that could be applied to all data pulled from Github.

The code that I'm most proud of is probably the Job model, as it's pretty simple and will always ensure that no empty results are returned from Github. I think that my solution works as a wide reaching, non-specific method for getting language trends from the data provided.

I'm least proud of the Active Record queries that I used in order to get job data per city. While it worked across all cities (aside from Boulder, which would return the location Denver on all jobs queried), there were some specificity issues. It made searching for java potentially misleading (as any job with javascript in the description would also be counted as a job with java in the description). I started off with the idea to persist the data that I pulled from Github so that the page would only load slowly the first time that you have to make the API calls, but in doing so I think that it made my results somewhat inaccurate. 

As far as tradeoffs are concerned, accuracy was traded off for speed and simplicity, and Boulder was sacrificed so that the system could work independently of what city was was being queried.


