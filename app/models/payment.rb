class Payment
    def request
        http.request(req)
    end

    def req
        req2 = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
        req2.body = body.to_json
        req2
    end

    def body
        {
            "token": "2899cfab862af6858bb8c2eb174da0fe",
            "sender_account": "dsa",
            "recipient_name": "Sandra Õnne",
            "recipient_account": "dsa",
            "description": Event.first.name,
            "amount": "123"
        }
    end

    def uri
        URI('http://vso17.cariba.ee/payments.json')
    end

    def http
        Net::HTTP.new(uri.host, uri.port)
    end
end