require 'gdata'
require 'net/https'
require 'uri'

module C2dm
  module Connection
    
    class << self
      def send_notification(noty, token)
        headers = { "Content-Type" => "application/x-www-form-urlencoded", 
                    "Authorization" => "GoogleLogin auth=#{token}" }

        message_data = noty.data.map{|k, v| "&data.#{k}=#{URI.escape(v)}"}.reduce{|k, v| k + v}
        data = "registration_id=#{noty.device.registration_id}&collapse_key=#{noty.collapse_key}#{message_data}"

        data = data + "&delay_while_idle" if noty.delay_while_idle

        url_string = configatron.c2dm.api_url
        url=URI.parse url_string
        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
   
        resp, dat = http.post(url.path, data, headers)

        return {:code => resp.code.to_i, :message => dat} 
      end

      def open
        client_login_handler = GData::Auth::ClientLogin.new('ac2dm', :account_type => 'HOSTED_OR_GOOGLE')
        token = client_login_handler.get_token(configatron.c2dm.username,
                                               configatron.c2dm.password,
                                               configatron.c2dm.app_name)

        yield token
      end
    end
  end # Connection
end # C2dm
