class ApiController < ApplicationController
	skip_before_action :authenticate_user!
  def about
  	render json:{"name":"Rain",
  				"time":DateTime.now.strftime("%H:%M:%S"),
  				"date":DateTime.now.strftime('%Y-%m-%d'),
  				"fruits": ["banana", "apple", "kiwi"]}
  end
end
