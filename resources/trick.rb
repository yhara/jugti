module Jugti
  module Resources
    class Trick < Default

      on(:get, ["tricks"]) do
        view.list(:tricks => controller(:trick).all )
      end
      
    end
  end
end
