if ENV["KOMPONENT_PATH_RESOLVER_CACHE"]
  Komponent::ComponentPathResolver.class_eval do
    @cache = Concurrent::Map.new

    def self.cache
      @cache
    end

    alias_method :resolve_without_caching, :resolve

    def resolve(component_name)
      self.class.cache[component_name] ||= resolve_without_caching(component_name)
    end
  end
end
