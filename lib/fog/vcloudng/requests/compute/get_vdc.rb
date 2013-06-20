module Fog
  module Compute
    class Vcloudng
      class Real

        def get_vdc(vdc_id)
          request(
            :expects  => 200,
            :headers  => { 'Accept' => 'application/*+xml;version=1.5' },
            :method   => 'GET',
            :parser => Fog::ToHashDocument.new,
            :path     => "vdc/#{vdc_id}"
          )
        end
        

      end
      
    end
  end
end