module Appdirs
  class Core
    def initialize(app_name:)
      @app_name = app_name
    end

    def user_data_dir
      "#{Dir.home}/Library/Application Support/#{@app_name}"
    end
  end
end