require_relative "boot"

# Require only the necessary frameworks (excluding Active Record)
require "rails" # This will load Rails without Active Record

# If you need to require specific components, uncomment and modify as needed:
# require "action_controller/railtie"
# require "action_view/railtie"
# require "action_mailer/railtie"
# require "active_job/railtie"
# require "action_cable/engine"
# require "sprockets/rails" # If you are using Sprockets for asset management

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Yolonode
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2
    config.api_only = true

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
