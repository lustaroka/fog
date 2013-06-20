module Fog
  module Compute
    class Vcloudng
      class Real
        require 'fog/vcloudng/parsers/compute/vapp_short'
        
        def get_vapp_short(vapp_id)
          request(
            :expects  => 200,
            :headers  => { 'Accept' => 'application/*+xml;version=1.5' },
            :method   => 'GET',
            :parser => Fog::Parsers::Compute::Vcloudng::VappShort.new,
            :path     => "vApp/#{vapp_id}"
          )
        end

      end
    end
  end
end
