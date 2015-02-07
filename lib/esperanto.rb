require 'esperanto/version'

require 'esperanto/source'
require 'execjs'

module Esperanto
  class << self
    def context
      @context ||= ExecJS::Runtimes::Node.compile(Source.bundled_paths.map {|path| File.read(path) }.join(';'))
    end

    def transform(code, options = {})
      # TODO Support other format
      context.call('esperanto.toAmd', code, options)
    end
  end
end
