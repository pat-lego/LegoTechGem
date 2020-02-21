# Ruby-Selenium

![](https://github.com/pat-lego/LegoTechGem/workflows/Test%20Feature/badge.svg)

A Ruby gem to help developers write test cases for a UI.

Create Action
```
def get_check_box_action(driver)
  # Create your action
  RadioButtonAction.new(driver)
end

def get_radio_button_action(driver)
  # Create your action
  CheckBoxAction.new(driver)
end

def get_input_action(driver)
  # Create your action
  InputAction.new(driver)
end

def get_select_action(driver)
  # Create your action
  SelectAction.new(driver)
end

def get_button_action(driver)
  # Create your action
  ButtonAction.new(driver)
end
```

Create Test Case
```
def get_test_case(driver)
  LegoTechSelenium::TestCase::Builder.new("My first test case", driver)
    .add_action(get_input_action(driver))
    .add_action(get_select_action(driver))
    .add_action(get_button_action(driver))
    .add_action(get_check_box_action(driver))
    .add_action(get_radio_button_action(driver))
    .build
end
```

Create a Test Suite
```
def get_test_suite(driver)
  LegoTechSelenium::TestSuite::Builder.new("My first test suite", driver)
    .add_test_case(get_test_case(driver))
    .build
end
```

**And Off you go!**

```
testSuite = get_test_suite(driver)
testSuite.run
```

## Now supports Action validation

You can now validate that the field that you clicked has valid data within it by simply setting the `:validate => true` flag within your Action.

If you don't want to then just don't set it.

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

**Using Bundler**

1. Install bundler
2. Create a Gemfile
3. Locate all the gem [here](https://rubygems.org/gems/legoTech_gem)
4. Include the version that you wish to use within the Gemfile 
5. Add `selenium-webdriver` as a dependency to the Gemfile
6. Run `bundle install`
7. Create a ruby file called `example.rb`
8. At the top write `require "legoTech_gem"`
9. Run the following command `bundle exec ruby example.rb`

**Using pure Gem**

1. Make sure Ruby is installed 
2. Run `gem install legoTech_gem`
3. Create a ruby file
4. At the top write `require "legoTech_gem"`
5. Run the file and all your dependencies should be there

# Run the Example

You can run the example script which would provide you  with a nice and simple example of how the script works.

1. Install Selenium
2. Install Chrome Driver (shown above)
3. Install Ruby
4. Within the `e2e` folder run `ruby main.rb`

Before Result:

![Page Before Selenium](https://i.imgur.com/vwGZ92G.png)

After Result:
 
![Page After Selenium](https://i.imgur.com/A8QF5kk.png)

# Author

[Patrique Legault](mailto:patrique.legault@gmail.com)

**Profile Links**

[Github](https://github.com/pat-lego)

[LinkedIn](https://www.linkedin.com/in/patrique-legault/)

[Twitter](https://twitter.com/_patlego)

# Notes

Please respect the naming definition as taken from here: https://github.com/airbnb/ruby#naming

Comments and tags must respect the naming from: https://rubydoc.info/gems/yard/file/docs/Tags.md

Ruby Types are defined here: https://www.geeksforgeeks.org/ruby-data-types/

**Note**: https://stackoverflow.com/questions/28506769/failed-to-require-a-local-gem/28507368#28507368
