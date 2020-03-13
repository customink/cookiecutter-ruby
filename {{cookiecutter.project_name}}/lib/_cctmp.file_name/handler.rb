module {% include "_cctmp/class_name.txt" %}
  class Handler

    def self.call(event)
      Handler.new(event).call
    end

    def initialize(event)
      @event = event
    end

    def call
      response 200, @event
    rescue => exception
      response 500, { error: exception.message }
    end

    def response(code, body)
      { statusCode: code,
        headers: [{'Content-Type' => 'application/json'}],
        body: JSON.dump(body) }
    end

  end
end
