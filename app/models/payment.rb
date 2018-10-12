class Payment

  def request
    net_http.request(req)
  end

  def req
    req2 = Net::HTTP::Post.new(uri.path, 'Content-Type' => 'application/json')
    req2.body = body.to_json
    req2
  end

  def uri
    URI('http://vso17.cariba.ee/payments.json')
  end

  def net_http
    Net::HTTP.new(uri.host, uri.port)
  end

  def body
    {
      "amount": 120,
      "sender_account": "Rain",
      "recipient_name": "Martin K.",
      "recipient_account": "test2 account",
      "description": Event.first.name,
      "token": "tore token asub siin"
    }
  end

end