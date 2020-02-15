# Ruby-Selenium
A Ruby gem to help developers write test cases for the UI

Please respect the naming definition as taken from here: https://github.com/airbnb/ruby#naming
Comments and tags must respect the naming from: https://rubydoc.info/gems/yard/file/docs/Tags.md
Ruby Types are defined here: https://www.geeksforgeeks.org/ruby-data-types/

# How to install dependencies

1. Make sure Ruby is installed `ruby -v` should return the current version of the language on your computer
2. Install bundler using `gem install bundler` to allow you to build the project
3. Make sure all of your new dependencies are within the Gemfile
4. Run `bundle install --path vendor/bundle`

# How to build a release

1. Make sure Ruby is installed `ruby -v` should return the current version of the language on your computer
2. Install bundler using `gem install bundler` to allow you to build the project
3. Building is as simple as `gem build ruby-selenium.gemspec` 
