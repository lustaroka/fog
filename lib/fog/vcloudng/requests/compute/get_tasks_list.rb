module Fog
  module Compute
    class Vcloudng
      class Real

        def get_tasks_list(tasks_list_id)
          request(
            :expects  => 200,
            :headers  => { 'Accept' => 'application/*+xml;version=1.5' },
            :method   => 'GET',
            :parser => Fog::ToHashDocument.new,
            :path     => "tasksList/#{tasks_list_id}"
          )
        end
        

      end
      
    end
  end
end