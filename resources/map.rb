module Jugti
  module Resources
    class Map
      include Waves::Resources::Mixin

      on(:get, []) { 
        redirect "/tricks" 
      }

      on(:get, ["tricks"]) {
        view(:trick).list(:tricks => [])
      }

      
    end
  end
end
