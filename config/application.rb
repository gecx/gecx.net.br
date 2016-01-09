require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module GecxNetBr
  class Application < Rails::Application
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = "pt-BR"
    config.encoding = "utf-8"

    config.active_record.raise_in_transactional_callbacks = true
    config.assets.precompile << %w(*.ttf *.eot *.svg *.woff)
    config.assets.precompile << %w(*.png *.jpg *.jpeg *.gif)
    config.assets.paths << Rails.root.join("app", "assets", "images")
  end
end
