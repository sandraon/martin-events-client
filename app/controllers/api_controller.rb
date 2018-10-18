class ApiController < ApplicationController
  skip_before_action :authenticate_user! 
  def about
    render json: {
      time: Time.now.strftime("%H:%M"),
      date: Date.current,
      name: 'Sandra Õnne',
      fruits: ['õun', 'pirn', 'apelsin', 'banaan', 'greip']
    }
  end
end
