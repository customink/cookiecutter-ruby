ENV['STAGE_ENV'] = 'test'
require 'bundler' ; Bundler.require :development, :test
require_relative '../lib/{% include "_cctmp/file_name.txt" %}'
require 'minitest/autorun'

module {% include "_cctmp/class_name.txt" %}
  class TestCase < MiniTest::Spec

    before do
      #
    end

    after do
      #
    end

    private

    def event_data(fname)
      file = File.join root, 'events', "#{fname}.json"
      JSON.load(File.read(file))
    end

    def root
      File.expand_path(__dir__)
    end

  end
end
