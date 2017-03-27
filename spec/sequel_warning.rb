if ENV['WARNING']
  require 'warning'
  Warning.ignore([:missing_ivar, :method_redefined], File.dirname(File.dirname(__FILE__)))
end

# SEQUEL5: Remove
if RUBY_VERSION >= '2.4'
  require 'warning'
  Warning.ignore(/warning: constant Sequel::[a-zA-z:]+ is deprecated/, File.dirname(File.dirname(__FILE__)))
end
