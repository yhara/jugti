module Jugti
  module Resources
    class Map
      include Waves::Resources::Mixin

      on(:get, []) do
        tricks = Jugti::Models::Trick.limit(11).to_a
        tricks[-1] = nil if tricks.size == 11

        records = Jugti::Models::Record.
                    reverse_order(:updated_at).
                    limit(10)

        view.top(:tricks => tricks, :records => records)
      end

      on(true, ["tricks"])      { to :trick }
      on(true, ["trick"])       { to :trick }
      on(true, ["trick", true]) { to :trick }

    end
  end
end
