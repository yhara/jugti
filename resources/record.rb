module Jugti
  module Resources
    class Record < Default
      
      # create
      on :post, ["trick", :trick_id, "records"] do
        # todo
      end

      # delete
      on :post, ["record", :record_id], :query => {:_method => 'DELETE'}  do
        model.find(:id => captured.record_id).delete
        redirect "/trick/
      end

    end
  end
end
