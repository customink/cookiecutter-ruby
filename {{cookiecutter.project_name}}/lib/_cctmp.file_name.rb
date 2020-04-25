require 'json'
require 'dotenv'
# Add your gem requires here:
# require 'some_gem'
require_relative './{% include "_cctmp/file_name.txt" %}/env'
# Add your additional lib PORO requires here:
# require_relative './{% include "_cctmp/file_name.txt" %}/some_poro

def handler(event:, context:)
  { statusCode: code,
    headers: [{'Content-Type' => 'application/json'}],
    body: JSON.dump(event) }
end
