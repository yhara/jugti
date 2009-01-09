module Jugti
  module Resources
    class Record < Default
      
      # create
      on :post, ["trick", :trick_id, "records"] do
        # todo
      end

      # delete
      on :delete, ["record", :record_id] do
        record = model.find(:id => captured.record_id)
        record.delete
        redirect "/trick/#{record.trick_id}"
      end

    end
  end
end
