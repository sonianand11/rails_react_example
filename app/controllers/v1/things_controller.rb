class V1::ThingsController < ApplicationController

  def index
    render json: {things: [
      {

        name: "Anand Soni",
        guid: "my-guid"
      }
    ]}.to_json
  end

end