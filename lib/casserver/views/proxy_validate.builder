# encoding: UTF-8
if @success
  xml.tag!("cas:serviceResponse", 'xmlns:cas' => "http://www.yale.edu/tp/cas") do
    xml.tag!("cas:authenticationSuccess") do
      xml.tag!("cas:user", @username.to_s)
      # Synapses CAS 0.1.3 - Allow nullable extra attributes
      if !@extra_attributes.blank?
        @extra_attributes.each do |key, value|
          if value != nil
            serialize_extra_attribute(xml, key, value)
          end
        end
      end
      if @pgtiou
        xml.tag!("cas:proxyGrantingTicket", @pgtiou.to_s)
      end
      if @proxies && !@proxies.empty?
        xml.tag!("cas:proxies") do
          @proxies.each do |proxy_url|
            xml.tag!("cas:proxy", proxy_url.to_s)
          end
        end
      end
    end
  end
else
  xml.tag!("cas:serviceResponse", 'xmlns:cas' => "http://www.yale.edu/tp/cas") do
    xml.tag!("cas:authenticationFailure", {:code => @error.code}, @error.to_s)
  end
end