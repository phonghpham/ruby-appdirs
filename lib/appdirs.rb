# frozen_string_literal: true

require_relative "appdirs/version"
require_relative "appdirs/core"
require "ostruct"

module Appdirs
  def self.new(app_name:)
    core_instance = Core.new(app_name: app_name)
    return core_instance if core_instance.macos?

    OpenStruct.new(unsupported_platform_message: core_instance.unsupported_platform_message)
  end
end
