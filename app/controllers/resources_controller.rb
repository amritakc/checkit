class ResourcesController < ApplicationController

	def index
	end

	def show_food

			#creating the params for the geocoder
		params = {
           category_filter: 'restaurants',
           # deals_filter: true,
           limit: 5,
           # offset: 5,
           radius_filter: 3219
        }


		locale = { cc: "US", lang: 'en' }

		# @center = Geocoder::Calculations.geographic_center(session[:addresses])
		coordinates = {latitude:37.784558, longitude: -122.398564}
		@data = Yelp.client.search_by_coordinates(coordinates,params, locale).businesses
		render :text => @data


			# @hash = Gmaps4rails.build_markers(@data) do |place, marker|
			# 	@placeinfo = "<p>" + place.name + "</p><p>" + place.display_phone.gsub("+1-","") + "</p>"
 		# 		marker.lat place.location.coordinate.latitude
 	 # 			marker.lng place.location.coordinate.longitude
 	 # 			marker.infowindow @placeinfo 
			# end

	end


	


end
