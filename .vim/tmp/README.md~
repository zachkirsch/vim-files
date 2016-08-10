# COMP 120 Spring 2015: Incident Reporter

Danielle Zelin, Michael Seltzer, Derek Benson, Zach Kirsch.

## Live Deployment

[Development app](https://irstaging.herokuapp.com)

[Production app](https://incidentreporter.herokuapp.com)

## Versions

Ruby  2.3.0p0

Rails 4.2.5.1

## Choice of Ruby Framework: Ruby on Rails

We chose to use Ruby on Rails. There are many benefits of Rails. First of all, Rails' configuration conventions help speed up the development provess and allow for the progammers to avoid spending a lot of time working on the configuration settings. Secondly, it is a popular, open source web framework so there is a large amount of information on the internet about working with Rails. It is object oriented, handles changes very easily, and it has a very good testing framework.

After comparing Rails with other frameworks like Sinatra, it is clear that one of the major distinctions is that Rails handles security concerns much better than others. Sinatra is very simple and easy to use; however, it doesn't necessarily handle security concerns such as Cross-site Request Forgery, SQL Injection, XSS, HTML Injection, and more. Rails handles scaling very nicely like renaming assets in all necessary locations every time they change.

However, with all of these benefits there are some problems that come with Rails. This includes not all hosts can support rails, Ruby isn't as commonly used as Java and PHP, and Rails isn't as fast as Java or C so there are some performance concerns.

Sources:

https://bitzesty.com/2014/01/10/ruby-on-rails-what-it-is-and-why-we-use-it-for-web-applications/

http://codefol.io/posts/Why-Rails-and-not-Sinatra-or-Node-js

## Ruby Packages

- pg, ~> 0.18
  - Use postgresql as the database for Active Record
- sass-rails, ~> 5.0
  - Use SCSS for stylesheets
- bootstrap-sass, ~> 3.3
  - Use bootstrap
- uglifier, ~> 2.7
  - Use Uglifier as compressor for JavaScript assets
- coffee-rails, ~> 4.1
  - Use CoffeeScript for .coffee assets and views
- jquery-rails, ~> 4.1
  - Use jquery as the JavaScript library
- jquery-turbolinks, ~> 2.1
  - Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
- jbuilder, ~> 2.4
  - Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
- sdoc, ~> 0.4, group: :doc
  - bundle exec rake doc:rails generates the API under doc/api.
- aws-sdk, ~> 2.2
  - for working with s3
- jquery-datatables-rails, ~> 3.3
  - Datatable plugin for creating responsive tables with front end backend tools
    for development
- bootstrap3-datetimepicker-rails, ~> 4.17
  - use fancy datepicker
- momentjs-rails, ~> 2.11
  - for time generation
- local_time, ~> 1.0
  - for better time stamps (in words)
- bootstrap-switch-rails, ~> 3.3
  - for bootstrap switch buttons
- bootstrap-select-rails, "~> 1.6"
  - for bootstrap-select dropdowns

## Other APIs or dependencies

We are using the ruby gem jquery-datatables-rails plugin to display a table with pagination. The plugin will allow us to show many incidents in a filtered, fast way. The datatable plugin was used as Tina explains that there are "Over 75,000 active people" at the institution who all may have multiple incidents to report

## Choice of Database: PostgreSQL

We chose postgresql because it is a widely used database that has large amounts of documentation available online. It has informative error messages. It is capable of handling many tasks efficiently. It has "complete support for reliable transactions, i.e. Atomicity, Consistency, Isolation, Durability (ACID)." Because postgresql is highly used and common, when issues appear it is likely that there will be a large amount of documentation to help with problems that arise. It supports many data types. Lastly, there are many thrid party libraries made to help Postgres be simple to use.

Source:
https://www.digitalocean.com/community/tutorials/sqlite-vs-mysql-vs-postgresql-a-comparison-of-relational-database-management-systems

## Choice of Test Framework: MiniTest

We chose MiniTest as our testing framework for a few reasons:

- It is small and lightweight, so as to not add too much extra baggage to our app
- It is incredibly fast, we can test our entire app in a few seconds
- There is a lot of existing support online
- It is built within the Rails distribution itself, so it incredibly easy to integrate and no magic handshaking is required

## Scaling

Once deployed, this app could receive 15,000 unique visits per day. At our current level, this app can handle a few thousand hits before the server is overloaded (found as a result of our stress testing). To improve this, it will be necessary to decrease the load of each visit. We will do this by:

- Minify Javascript files
- Compress files to be later decompressed by the browser
- Improving placement of elements within a page (CSS linked from header, JS linked after the HTML body)
- Use a CDN to deliver assets directly rather than routing from or through our Heroku server
- Caching our files in the browser (or in the Application Cache) so that revisits don't always restart the fetching process

We will soon be implementing these improvements and testing the results with stress tests via Loader.io.
