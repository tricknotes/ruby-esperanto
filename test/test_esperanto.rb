require 'minitest/autorun'
require 'minitest/power_assert'

require 'esperanto'

class TestEsperanto < MiniTest::Test
  def test_to_amd
    source = <<-JS
export default 'hi';
    JS

    expected = <<-JS.strip
define(function () {

\t'use strict';

\treturn 'hi';

});
    JS

    assert { Esperanto.to_amd(source)['code'] == expected }
  end

  def test_to_cjs
    source = <<-JS
export default 'hi';
    JS

    expected = <<-JS.strip
'use strict';

module.exports = 'hi';
    JS

    assert { Esperanto.to_cjs(source)['code'] == expected }
  end

  def test_to_umd
    source = <<-JS
export default 'hi';
    JS

    expected = <<-JS.strip
(function (global, factory) {
\ttypeof exports === 'object' && typeof module !== 'undefined' ? module.exports = factory() :
\ttypeof define === 'function' && define.amd ? define(factory) :
\tglobal.homura = factory()
}(this, function () { 'use strict';


\treturn 'hi';

}));
    JS

    assert { Esperanto.to_umd(source, name: 'homura')['code'] == expected }
  end
end
