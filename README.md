# Ruby-Selenium

![](https://github.com/pat-lego/LegoTechGem/workflows/Test%20Feature/badge.svg)

A Ruby gem to help developers write test cases for the UI

Please respect the naming definition as taken from here: https://github.com/airbnb/ruby#naming
Comments and tags must respect the naming from: https://rubydoc.info/gems/yard/file/docs/Tags.md
Ruby Types are defined here: https://www.geeksforgeeks.org/ruby-data-types/

**Note**: https://stackoverflow.com/questions/28506769/failed-to-require-a-local-gem/28507368#28507368

# How to install Chrome Driver on Mac OSX

In order to control Chrome you will need to install the Chrome Driver please follow these steps.
https://www.swtestacademy.com/install-chrome-driver-on-mac/

Note once the driver is installed run it manually once in order to allow the system to trust it. If you do not do thisd then the system will not trust it and then it will not open

# How to install dependencies

1. Make sure Ruby is installed `ruby -v` should return the current version of the language on your computer
2. Install bundler using `gem install bundler` to allow you to build the project
3. Make sure all of your new dependencies are within the Gemfile
4. Run `bundle install --path vendor/bundle`

# How to build a release

1. Make sure Ruby is installed `ruby -v` should return the current version of the language on your computer
2. Install bundler using `gem install bundler` to allow you to build the project
3. Building is as simple as `gem build ruby-selenium.gemspec` 

# How to publish

1. Make sure Ruby is installed `ruby -v` should return the current version of the language on your computer
2. Make sure you have a built gem
3. Using the gem command run the following `gem push [YOUR_GEM_NAME].gem`

# How to include within project
1. Install bundler
2. Create a Gemfile
3. Locate all the gem [here](https://rubygems.org/gems/legoTech_gem)
4. Include the version that you wish to use within the Gemfile
5. Run `bundle install`
6. Create a ruby file
7. At the top write `require "legoTech_gem"`
8. Run the file and all your dependencies should be there

# Run the Example

You can run the example script which would provide you  with a nice and simple example of how the script works.

1. Install Selenium
2. Install Chrome Driver (shown above)
3. Install Ruby
4. Within the `e2e` folder run `ruby main.rb`

Before Result:

![Page Before Selenium](https://i.imgur.com/Uza1rae.png)

After Result:
 
![Page After Selenium](https://i.imgur.com/FBFWD9h.png)

# Author

[Patrique Legault](mailto:patrique.legault@gmail.com)

**Profile Links**

[Github](https://github.com/pat-lego)

[LinkedIn](https://www.linkedin.com/in/patrique-legault/)

[Twitter](https://twitter.com/_patlego)