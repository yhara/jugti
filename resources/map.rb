module Jugti
  module Resources
    class Map
      include Waves::Resources::Mixin

      on(:get, []) { redirect "/tricks" }

      on(true, ["tricks"])      { to :trick }
      on(true, ["trick"])       { to :trick }
      on(true, ["trick", true]) { to :trick }

    end
  end
end
