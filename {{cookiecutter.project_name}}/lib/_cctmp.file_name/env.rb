module {% include "_cctmp/class_name.txt" %}
  module Env

    def stage
      ENV['STAGE_ENV'] || 'development'
    end

    def test?
      stage == 'test'
    end

    def development?
      stage == 'development'
    end

    def region
      ENV['AWS_REGION'] || 'us-east-1'
    end

    extend self

    Dotenv.load(".env.#{stage}", '.env')

  end
end
