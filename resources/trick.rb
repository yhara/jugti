module Jugti
  module Resources
    class Trick < Default

      # new
      on :get, ["trick"] do
        view.new
      end

      # create
      on :post, ["tricks"] do
        trick = controller.create
        redirect "/trick/#{trick.id}"
      end
      
      # show
      RECORD_SORT_KEYS = {
        "date" => :date,
        "catches" => :catches,
        "comment" => :comment
      }
      on :get, ["trick", :trick_id] do
        trick = model.find(:id => captured.trick_id)
        sort_key = RECORD_SORT_KEYS[params[:sort]] || :date

        records = trick.records_dataset.reverse_order(sort_key, :updated_at)
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

      # add record
      on :post, :record => ["trick", :trick_id ] do
        trick = model.find(:id => captured.trick_id)
        trick.add_record(Models::Record.create(query.record.to_hash))
        redirect request.path
      end

    end
  end
end
