class Api::ParamsPracticeController < ApplicationController
  
  def practice_method
    # render json:{message:"is this working"}
    @phrase = params["phrase"].upcase
    render 'all_cap.json.jbuilder'
  end

  def url_segment_method
    @message = params["hellokitty"]
    render 'url_segment.json.jbuilder'
  end

  def body_params
   user_input = params[:key]
   @message = "The secret of life is #{user_input}."
    render 'body_params.json.jbuilder'
  end

end

