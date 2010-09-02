# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

Haml::Template.options[:ugly] = false # TODO: Remove to improve rendering time in production

run Wagering::Application
