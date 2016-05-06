class ResourcesController < ApplicationController
	  before_action :require_login, only: [:index, :show_food, :show_hospital, :show_womenshelter, :show_youthshelter]

	def index
	end

	def show_food

			#creating the params for the geocoder
		params = {
           # category_filter: 'restaurants',
           term: 'diner, restaurant',
           limit: 10,
           # offset: 5,
           radius_filter: 6000
        }


		locale = { cc: "US", lang: 'en' }

		# @center = Geocoder::Calculations.geographic_center(session[:addresses])
		coordinates = {latitude:37.784558, longitude: -122.398564}
		@data = Yelp.client.search_by_coordinates(coordinates,params, locale).businesses
		# render :text => @data


			@hash = Gmaps4rails.build_markers(@data) do |place, marker|
				@placeinfo = "<p>" + place.name + "</p><p>" + place.display_phone.gsub("+1-","") + "</p>"
 				marker.lat place.location.coordinate.latitude
 	 			marker.lng place.location.coordinate.longitude
 	 			marker.infowindow @placeinfo 
			end

	end


	def show_hospital

			#creating the params for the geocoder
		params = {
           # category_filter: 'hospital',
           term: 'hospital',
           limit: 5,
           # offset: 5,
           radius_filter: 6000
        }


		locale = { cc: "US", lang: 'en' }

		# @center = Geocoder::Calculations.geographic_center(session[:addresses])
		coordinates = {latitude:37.784558, longitude: -122.398564}
		@data = Yelp.client.search_by_coordinates(coordinates,params, locale).businesses
		# render :text => @data


			@hash = Gmaps4rails.build_markers(@data) do |place, marker|
				@placeinfo = "<p>" + place.name + "</p><p>" + place.display_phone.gsub("+1-","") + "</p>"
 				marker.lat place.location.coordinate.latitude
 	 			marker.lng place.location.coordinate.longitude
 	 			marker.infowindow @placeinfo 
			end

	end

	def show_mentalhealth

			#creating the params for the geocoder
		params = {
           category_filter: 'c_and_mh',
           
           limit: 10,
           # offset: 5,
           radius_filter: 6000
        }


		locale = { cc: "US", lang: 'en' }

		# @center = Geocoder::Calculations.geographic_center(session[:addresses])
		coordinates = {latitude:37.784558, longitude: -122.398564}
		@data = Yelp.client.search_by_coordinates(coordinates,params, locale).businesses
		# render :text => @data


			@hash = Gmaps4rails.build_markers(@data) do |place, marker|
				@placeinfo = "<p>" + place.name + "</p><p>" + place.display_phone.gsub("+1-","") + "</p>"
 				marker.lat place.location.coordinate.latitude
 	 			marker.lng place.location.coordinate.longitude
 	 			marker.infowindow @placeinfo 
			end

	end

	def show_womenshelter
		@x = Womenshelter.all
		# render :json => @x
		@hash = Gmaps4rails.build_markers(@x) do |place, marker|
			@placeinfo = "<p>" + place.name + "</p>"
				marker.lat place.latitude
	 			marker.lng place.longitude
	 			marker.infowindow @placeinfo 
		end
	end

	def show_youthshelter
		@x = Youtshelter.all
		# render :json => @x
		@hash = Gmaps4rails.build_markers(@x) do |place, marker|
			@placeinfo = "<p>" + place.name + "</p>"
				marker.lat place.latitude
	 			marker.lng place.longitude
	 			marker.infowindow @placeinfo 
		end
	end

	


end
