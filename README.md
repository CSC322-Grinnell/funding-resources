# README #

Welcome to the campus funding resources project. Visit the site at `https://funding-resources.herokuapp.com`. Please note
that this setup guide assumes you are using an Ubuntu server on AWS Cloud9. 

## Common Commands ##

Every time you add a new gem (this is similar to a library in C) you will need to run `bundle install`. 

To update the data table, run `rails generate migration [migration name]`. Then, update
the generated migration file to include instructions for how to modify the database. 
Run `rails db:migrate` after that. 

You can find the data we used for developement in db/seeds.rb. If you want to re-populate the data,
run `rake db:reset`.

To log in as an administrator (access active admin by adding "/admin" to the end of the base url), use
the following:
```
username: admin@example.com
password: password 
```

## Initial Setup ##

Run `sudo apt-get install libpq-dev`. If prompted, update [Yarn](https://gist.github.com/mikerourke/0c2cac1bec77fb4c1d875bfaee487074).

## What's in the box ##

1. We've set up a `User` model for you to handle site users.
   It has an `admin` flag to denote users with elevated permissions.
2. [Devise](http://devise.plataformatec.com.br/) handles user authentication.
3. [ActiveAdmin](https://activeadmin.info/) provides an admin interface that's easy to configure.
4. [Webpacker](https://github.com/rails/webpacker#readme) integrates modern JavaScript packages.
   If you don't need it, the traditional Rails assets will continue to work.
5. [Bootstrap](https://getbootstrap.com/docs/5.0/getting-started/introduction/) provides a CSS framework for easy layouts and styling. It has fantastic documentation.
6. [Sass](https://sass-lang.com/guide) adds some extra power to your stylesheets when they have the `.scss` extension. Regular CSS will always work great in them too!
7. [Gutentag](https://github.com/pat/gutentag), our pride and joy, allows users to filter resources based on their tags (attributes).
8. [pgsearch](https://pganalyze.com/blog/full-text-search-ruby-rails-postgres), a classic overachiever, lets you search the entire database without typing a single
   line of SQL.

## Future Tasks and Goals ##

1. Define more tags for resources
2. Add a user sign up page with a way to verify that users have a .grinnell.edu email address. This is a great 
   first task since the Hartl book has a step-by-step walkthrough for how to implement it. 
3. Allow non-administrators to add resources
4. Create a map feature that allows users to find resource locations on campus (we suggest using [arcGIS](https://github.com/ajturner/arcgis-ruby))


## Verbose musings ##
This website is built to remedy the lack of transparency in funding at Grinnell. Currently, unless you know someone who knows about a fund, 
it is next to impossible to apply for, let alone receive money from, a funding source. In order to mitigate this issue, the CLS funding 
website provides a way for students to easily browse funds and find one that is right for them. 

Our project is built around a table of funding resources. The schematics for this table can be found in db/schema.rb. 
The browse page of the website will display all of the resources. We use the “pgsearch” gem to look for exact matches between text entered 
into the search bar and items in our resources table. Users can also refine their search based on tags. Tags are extra descriptive features 
that can be added to a resource. Instead of having a true/false column for every potential aspect of a resource, we opted to use tags. 
This allowed us to have a sparse data set without adding in a ton of extra space. 

When a user searches for something--this uses the get method--the index method in the search controller (app/models/search_controller.rb) 
is called. This first gathers a list (array) of all of the tags a user has selected. Then, it filters based on tags if they are present 
and/or a text search if it is present. If neither is present, it returns all of the information. Note that when you choose a new set of 
tags, the previous text search will be preserved and vice versa. However, entering in new text will get rid of the old typed search query 
just as selecting new tags clears the old ones.

Another very important gem is Gutentag! We use Gutentag to catalog each tag. Instead of assigning a tag array to each resource object, 
Gutentag creates a new tag object only when an entirely new tag is added. If a tag has been used to describe a resource before, it will 
use that same tag to describe every other resource that has that attribute. To implement this, Gutentag stores relations, which describe 
the connection between a tag and a resource object.

Finally, we use ActiveAdmin to allow people like Susan Sanning to add and edit resources. ActiveAdmin is called when “/admin” is added to 
the base website url. The gem allows us to create admin accounts and provides a graphical user interface for modifying the database. 
This is especially important for website administrators who do not have programming experience. 

Our group did the bulk of our work while pair programming or in team meetings. Since none of us knew Ruby on Rails, it was helpful to have 
someone to bounce ideas off of. Furthermore, it was much more likely that one of the two people working together knew something; the combined 
knowledge was enough to remedy a lot of bugs. It is also important to start working on the project as soon as you receive the code. While it 
makes sense to plan what you want to do, you will gain a much stronger understanding of what you can implement once you have messed around with the code.

Ruby on Rails is extremely difficult to learn. Ruby itself is fairly straightforward, but Rails is convoluted and foreign. It is just fine to be lost 
in the file system, confused about when to use plurals, and upset that the function definitions for one object are put in three or four different 
locations. Please remember that this language is a beast and that you unfortunately do not have enough time to fully grasp it (if you end up becoming 
a master Rails developer in seven weeks, please do not contact us to let us know). 




