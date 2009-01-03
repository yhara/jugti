module Jugti
  module Resources
    class Record < Default
      
      # create
      on :post, ["trick", :trick_id, "records"] do
        # todo
      end

      # delete
      on :delete, ["record", :record_id] do
        model.find(:id => captured.record_id).delete
      end

    end
  end
end
