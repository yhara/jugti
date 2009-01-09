module Jugti
  module Resources
    class Map
      include Waves::Resources::Mixin

      on(:get, []) do
        tricks = Jugti::Models::Trick.all
        records = Jugti::Models::Record.
                    reverse_order(:updated_at).
                    limit(10)

        view.top(:tricks => tricks, :records => records)
      end

      on(true, ["trick", true, "records"]) { to :record }
      on(true, ["record", true]) { to :record }

      on(true, ["tricks"])      { to :trick }
      on(true, ["trick"])       { to :trick }
      on(true, ["trick", true]) { to :trick }

    end
  end
end
