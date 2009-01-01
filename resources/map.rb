module Jugti
  module Resources
    class Map
      include Waves::Resources::Mixin

      on(:get, []) do
        records = Jugti::Models::Record.
                    reverse_order(:updated_at).
                    limit(3)
        view.top(:records => records)
      end

      on(true, ["tricks"])      { to :trick }
      on(true, ["trick"])       { to :trick }
      on(true, ["trick", true]) { to :trick }

    end
  end
end
