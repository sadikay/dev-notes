### Rails, Selenium, Capybara, Chrome
Use `Capybara::Session` with chrome browser

Gemfile
```ruby
gem 'capybara'
gem 'poltergeist'
gem 'selenium-webdriver'
gem 'chromedriver-helper'
```
Usage:

```ruby
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.javascript_driver = :chrome
Capybara.default_driver = :chrome

@session = Capybara::Session.new(:selenium, :js_errors => false)
@session.visit 'https://example.com'
```
