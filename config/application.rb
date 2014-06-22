require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'
# require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AuthExample
  # Settings in config/environments/* take precedence over those specified he
  # re.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.
  class Application < Rails::Application
    # Set Time.zone default to the specified zone and make Active Record auto-c
    # onvert to this zone.
    # Run 'rake -D time' for a list of tasks for finding time zone names. Defau
    # lt is UTC.
    config.time_zone = 'Tokyo'

    # The default locale is :en and all translations from config/locales/*.rb,y
    # ml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}
    # ').to_s]
    config.i18n.default_locale = :ja
  end
end
