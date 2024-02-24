require 'rbconfig'

module Appdirs
  class Core
    def initialize(app_name:)
      @app_name = app_name
    end

    def user_data_dir
      "#{Dir.home}/Library/Application Support/#{@app_name}"
    end

    def user_config_dir
      "#{Dir.home}/Library/Preferences/#{@app_name}"
    end

    def user_cache_dir
      "#{Dir.home}/Library/Caches/#{@app_name}"
    end

    def user_log_dir
      "#{Dir.home}/Library/Logs/#{@app_name}"
    end

    def site_data_dir
      "/Library/Application Support/#{@app_name}"
    end

    def site_config_dir
      "/Library/Preferences/#{@app_name}"
    end

    def unsupported_platform_message
      'Appdirs gem is currently only supported on macOS.' unless macos?
    end

    def macos?
      RbConfig::CONFIG['host_os'] =~ /darwin|mac os/
    end
  end
end