class ApiController < ApplicationController
  skip_before_action :authenticate_user! 
  skip_before_action :verify_authenticity_token

  def about
    render json: {
      time: Time.now.strftime("%H:%M"),
      date: Date.current,
      name: 'Sandra Õnne',
      fruits: ['õun', 'pirn', 'apelsin', 'banaan', 'greip']
    }
  end

  def haiku
    render json: {
      haiku: reverse(haiku_params[:haiku]),
    }
  end

  def reverse(haiku)
    haiku.split(' ').reverse.join(' ')
  end

  def haiku_params
    params.permit(:name, :haiku)
  end
end
