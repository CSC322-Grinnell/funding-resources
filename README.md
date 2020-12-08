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
admin@example.com
password 
```

## Initial Setup ##

Run `sudo apt-get install libpq-dev`. If prompted, update Yarn (https://gist.github.com/mikerourke/0c2cac1bec77fb4c1d875bfaee487074).

## What's in the box ##

1. We've set up a `User` model for you to handle site users.
   It has an `admin` flag to denote users with elevated permissions.
2. [Devise](http://devise.plataformatec.com.br/) handles user authentication.
3. [ActiveAdmin](https://activeadmin.info/) provides an admin interface that's easy to configure.
4. [Webpacker](https://github.com/rails/webpacker#readme) integrates modern JavaScript packages.
   If you don't need it, the traditional Rails assets will continue to work.
5. [Bootstrap](https://getbootstrap.com/) provides a CSS framework for easy layouts and styling.
6. [Sass](https://sass-lang.com/guide) adds some extra power to your stylesheets when they have the `.scss` extension. Regular CSS will always work great in them too!
7. [Gutentag](https://github.com/pat/gutentag), our pride and joy, allows users to filter resources based on their tags (attributes).
8. [pgsearch](https://pganalyze.com/blog/full-text-search-ruby-rails-postgres), a classic overachiever, lets you search the entire database without typing a single
   line of SQL.

## Future Tasks and Goals ##

1. Determine resource buckets/categories
2. Add user sign up page with a .grinnell.edu verification
3. More relaxed administrative priviledges where anyone can add resources but only admins can approve
4. Map feature to browse resource locations on campus
