require 'route_resolution/version'

module RouteResolution
  AUTO_GENERATED_FILE = '.route_resolution'.freeze
  HEADING = '# Created by route_resolution'.freeze

  def self.routes_from_rails
    File.open(AUTO_GENERATED_FILE, 'w') do |f|
      f.puts(HEADING)
    end
  end
end
