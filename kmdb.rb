# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

movie1 = movie.new
movie1.title = "Batman Begins"
movie1.year_released = "2005"
movie1.rating = "PG-13"
movie1.person_id = "Christopher Nolan"
movie1.save

movie2 = movie.new
movie2.title = "The Dark Knight"
movie2.year_released = "2008"
movie2.rating = "PG-13"
movie2.person_id = "Christopher Nolan"
movie2.save

movie3 = movie.new
movie3.title = "The Dark Knight Rises"
movie3.year_released = "2012"
movie3.rating = "PG-13"
movie3.person_id = "Christopher Nolan"
movie3.save

role1 = role.new
role1.name = "Bruce Wayne"
role1.movie_id = "Batman Begins"
role1.person_id = "Christian Bale"
role1.save

role2 = role.new
role2.name = "Bruce Wayne"
role2.movie_id = "The Dark Knight"
role2.person_id = "Christian Bale"
role2.save

role3 = role.new
role3.name = "Bruce Wayne"
role3.movie_id = "The Dark Knight Rises"
role3.person_id = "Christian Bale"
role3.save

role4 = role.new
role4.name = "Alfred"
role4.movie_id = "Batman Begins"
role4.person_id = "Michael Caine"
role4.save

role5 = role.new
role5.name = "Ra's Al Ghul"
role5.movie_id = "Batman Begins"
role5.person_id = "Liam Neeson"
role5.save

role6 = role.new
role6.name = "Rachel Dawes"
role6.movie_id = "Batman Begins"
role6.person_id = "Katie Holmes"
role6.save

role7 = role.new
role7.name = "Commissioner Gordan"
role7.movie_id = "Batman Begins"
role7.person_id = "Gary Oldman"
role7.save

role8 = role.new
role8.name = "Joker"
role8.movie_id = "The Dark Knight"
role8.person_id = "Heath Ledger"
role8.save

role9 = role.new
role9.name = "Harvey Dent"
role9.movie_id = "The Dark Knight"
role9.person_id = "Aaron Eckhart"
role9.save

role10 = role.new
role10.name = "Alfred"
role10.movie_id = "The Dark Knight"
role10.person_id = "Michael Caine"
role10.save

role11 = role.new
role11.name = "Rachel Dawes"
role11.movie_id = "The Dark Knight"
role11.person_id = "Maggie Gyllenhaal"
role11.save

role12 = role.new
role12.name = "Commissioner Gordan"
role12.movie_id = "The Dark Knight Rises"
role12.person_id = "Gary Oldman"
role12.save

role13 = role.new
role13.name = "Bane"
role13.movie_id = "The Dark Knight Rises"
role13.person_id = "Tom Hardy"
role13.save

role14 = role.new
role14.name = "John Blake"
role14.movie_id = "The Dark Knight Rises"
role14.person_id = "Joseph Gordon-Levitt"
role14.save

role15 = role.new
role15.name = "Selina Kyle"
role15.movie_id = "The Dark Knight Rises"
role15.person_id = "Anne Hathaway"
role15.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
