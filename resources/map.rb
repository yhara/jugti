module Jugti
  module Resources
    class Map
      include Waves::Resources::Mixin

      on(:get, []) { redirect "/tricks" }

      on(true, ["tricks"])      { to :trick }

    end
  end
end
