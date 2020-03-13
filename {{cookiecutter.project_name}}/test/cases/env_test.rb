require 'test_helper'

module {% include "_cctmp/class_name.txt" %}
  class EnvTest < TestCase

    it '.stage' do
      expect(Env.stage).must_equal('test')
    end

  end
end
