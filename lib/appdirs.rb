# frozen_string_literal: true

require_relative "appdirs/version"
require_relative "appdirs/core"

module Appdirs
  def self.new(app_name)
    Core.new(app_name)
  end
end
