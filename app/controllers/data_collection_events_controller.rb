class DataCollectionEventsController < ApplicationController
  def show
    @data_collection_event = DataCollectionEvent.find(params[:id])
  end
end
