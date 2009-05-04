module Decoct
  module Dconstants
    LIB = 'lib'
    VIEWS = 'views'
    SPEC = 'spec'
    PUBLIC = 'public'
    TEMPLATES = File.join(File.dirname(__FILE__), "..", 'lib', 'templates') + File::SEPARATOR.to_s
  end
end
