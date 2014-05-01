class Case311sController < ApplicationController
  respond_to :json, :xml, :html
  def find
  	query = Case311.all

  	query = query.status(params[:status]) unless params[:status].blank?
  	query = query.since(params[:since]) unless params[:since].blank?
  	query = query.source(params[:source]) unless params[:source].blank?
  	if !params[:near].blank?
  		lat,long = params[:near].split(',')
  		query = query.near(lat, long) unless lat.blank? || long.blank?
  	end
  	

  	@all_cases = query
  	respond_with  @all_cases
  end
end
