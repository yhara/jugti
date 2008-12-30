module Jugti
  module Resources
    class Trick < Default

      # list
      on(:get, ["tricks"]) do
        view.list(:tricks => controller.all )
      end
      
      # show
      on(:get, ["trick", :trick_id]) do
        trick = model.find(:id => captured.trick_id)
        records = trick.records
        view.show(:trick => trick, :records => records)
      end

      # edit
      on :get, ["trick", :trick_id ], :query => {:mode => 'edit'} do
        trick = model.find(:id => captured.trick_id)
        view.edit(:trick => trick)
      end

      # update
      on :put, ["trick", :trick_id ] do
        name = model.find(:id => captured.trick_id).name
        trick = controller.update(name)
        redirect "/trick/#{captured.trick_id}"
      end

    end
  end
end
