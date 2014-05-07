RACK_ENV = 'test' unless defined?(RACK_ENV)
require File.expand_path(File.dirname(__FILE__) + "/../config/boot")

require "test/unit"
require 'database_cleaner'

class Test::Unit::TestCase
  include Rack::Test::Methods

  # You can use this method to custom specify a Rack app
  # you want rack-test to invoke:
  #
  #   app PadrinoBlog::App
  #   app PadrinoBlog::App.tap { |a| }
  #   app(PadrinoBlog::App) do
  #     set :foo, :bar
  #   end
  #
  def app(app = nil, &blk)
    @app ||= block_given? ? app.instance_eval(&blk) : app
    @app ||= Padrino.application
  end

  def setup 
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end
end
