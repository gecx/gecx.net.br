Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w( app/assets/fonts)
Rails.application.config.assets.precompile += %w( admin.css )
Rails.application.config.assets.precompile += %w( *.png *.jpg *.jpeg *.gif )