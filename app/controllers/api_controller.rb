class ApiController < ApplicationController
	skip_before_action :authenticate_user!
	skip_before_action :verify_authenticity_token


  def about
  	render json:{"name":"Rain",
  				"time":DateTime.now.strftime("%H:%M"),
  				"date":DateTime.now.strftime('%Y-%m-%d'),
  				"fruits": ["banana", "apple", "kiwi", "melon", "pear"]}
  end

  def haiku
	render json: { haiku: reverse(haiku_params[:haiku]), name: haiku_params[:name].upcase}
  end

def reverse(haiku)
	haiku.split(' ').reverse.join(' ')
end

def haiku_params
	params.permit(:name, :haiku)
end

end
