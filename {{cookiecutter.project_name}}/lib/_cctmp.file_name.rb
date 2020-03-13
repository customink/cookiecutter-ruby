require 'json'
require 'dotenv'
# Add your gem requires here:
# require 'some_gem'
require_relative './{% include "_cctmp/file_name.txt" %}/env'
require_relative './{% include "_cctmp/file_name.txt" %}/handler'
# Add your additional lib PORO requires here:
# require_relative './{% include "_cctmp/file_name.txt" %}/some_poro

def handler(event:, context:)
  {% include "_cctmp/class_name.txt" %}::Handler.call(event)
end
