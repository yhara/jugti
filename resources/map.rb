module Jugti
  module Resources
    class Map
      include Waves::Resources::Mixin

      on(:get, []) { redirect "/tricks" }

      on(:get, ["tricks"]) do
        view(:trick).list(:tricks => controller(:trick).all )
      end
      
    end
  end
end
