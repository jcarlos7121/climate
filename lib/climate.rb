# frozen_string_literal: true

require_relative "climate/version"

module Climate
  class Error < StandardError; end
  require 'climate/railtie' if defined?(Rails)

  class << self
    attr_writer :tasks

    def tasks
      @tasks ||= []
    end
  end
end
