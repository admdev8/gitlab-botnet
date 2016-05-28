require 'capybara'
require 'capybara/poltergeist'
require 'capybara/dsl'
class WhatISMyApi
  include Capybara::DSL

  def initialize
    Capybara.javascript_driver = :poltergeist
    Capybara.register_driver :poltergeist do |app|
      Capybara::Poltergeist::Driver.new(app, js_errors: true, timeout: 30)
    end
    Capybara.default_driver = :poltergeist
    Capybara.default_max_wait_time = 90
    Capybara.ignore_hidden_elements = true
  end

  def info
    visit "https://www.whatismyip.com/"
    page.find('[class="ip-box-left"]').text
  end
end