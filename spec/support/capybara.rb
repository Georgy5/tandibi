require "capybara/rspec"
require "capybara/apparition"

Capybara.default_driver = :apparition
Capybara.javascript_driver = :apparition

# Browser Options
Capybara.register_driver :apparition do |app|
  options = {js_errors: false}
  Capybara::Apparition::Driver.new(app, options)
end
