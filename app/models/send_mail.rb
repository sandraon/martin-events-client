class SendMail
    def send
        from = SendGrid::Email.new(email: 'test@example.com')
        to = SendGrid::Email.new(email: 'test@example.com')
        subject = 'Sending with SendGrid is Fun'
        content = SendGrid::Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
        mail = SendGrid::Mail.new(from, subject, to, content)

        sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
        response = sg.client.mail._('send').post(request_body: mail.to_json)

    end
end