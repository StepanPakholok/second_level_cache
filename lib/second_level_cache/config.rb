# -*- encoding : utf-8 -*-
module SecondLevelCache
  module Config
    extend self

    attr_accessor :cache_store, :logger, :cache_key_prefix, :statsd, :caching_enabled

    def caching_enabled
      @caching_enabled
    end

    def statsd
      @statsd
    end

    def cache_store
      @cache_store ||= Rails.cache if defined?(Rails)
      @cache_store
    end

    def logger
      @logger ||= Rails.logger if defined?(Rails)
      @logger ||= Logger.new(STDOUT)
    end

    def cache_key_prefix
      @cache_key_prefix ||= 'slc'
    end
  end
end
