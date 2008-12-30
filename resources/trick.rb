module Jugti
  module Resources
    class Trick < Default

      on(:get, ["tricks"]) do
        view.list(:tricks => controller.all )
      end
      
      on(:get, ["trick", :trick_id]) do
        trick = model.find(:id => captured.trick_id)
        view.show(:trick => trick)
      end
      
    end
  end
end
