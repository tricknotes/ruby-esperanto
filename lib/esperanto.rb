require 'esperanto/version'

require 'esperanto/source'
require 'execjs'

module Esperanto
  class << self
    def context
      @context ||= ExecJS.compile(Source.bundled_source)
    end

    def to_amd(code, options = {})
      context.call('esperanto.toAmd', code, options)
    end

    def to_cjs(code, options = {})
      context.call('esperanto.toCjs', code, options)
    end

    def to_umd(code, options = {})
      context.call('esperanto.toUmd', code, options)
    end

    # TODO Support `esperanto.bundle`. see: https://github.com/esperantojs/esperanto/wiki/Bindings
  end
end
