# README #

Welcome to the campus funding resources project. Visit the site at `https://funding-resources.herokuapp.com`

## Getting started ##

You can run the server with this command:

```
rails server
```

And then visit http://localhost:3000 in your browser to see the site!

To create a default admin user for development, run:

```
rails db:seed
```

You will then be able to log in as `admin@example.com`, password `password` in development mode. 
On heroku, log in as `hello@fundingteam.com`, password `gcresources`.

## What's in the box ##

This comes with a few more extras than a standard Rails project.
These are meant to give your project a good start, but if you don't need a particular piece you can always remove it.

1. We've set up a `User` model for you to handle site users.
   It has an `admin` flag to denote users with elevated permissions.
2. [Devise](http://devise.plataformatec.com.br/) handles user authentication.
3. [ActiveAdmin](https://activeadmin.info/) provides an admin interface that's easy to configure.
4. [Webpacker](https://github.com/rails/webpacker#readme) integrates modern JavaScript packages.
   If you don't need it, the traditional Rails assets will continue to work.
5. [Bootstrap](https://getbootstrap.com/) provides a CSS framework for easy layouts and styling.
6. [Sass](https://sass-lang.com/guide) adds some extra power to your stylesheets when they have the `.scss` extension. Regular CSS will always work great in them too!

## Future Tasks and Goals ##

1. Determine resource buckets/categories
2. Hyperlinks on individual fund pages
3. Add user sign up page with a .grinnell.edu verification
4. More relaxed administrative priviledges where anyone can add resources but only admins can approve
5. Sort functionality for the resources page
6. Map feature to browse resource locations on campus
