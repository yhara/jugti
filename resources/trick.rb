module Jugti
  module Resources
    class Trick < Default

      on(:get, ["tricks"]) do
        view.list(:tricks => controller.all )
      end
      
      on(:get, ["trick", :trick_id]) do
        trick = model.find(:id => captured.trick_id)
        records = trick.records
        view.show(:trick => trick, :records => records)
      end
      
    end
  end
end
