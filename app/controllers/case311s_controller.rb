class Case311sController < ApplicationController
  respond_to :json, :xml, :html
  def find
  	query = Case311.all
  	
  	query = query.status(params[:status]) if params[:status]
  	query = query.since(params[:since]) if params[:since]
  	query = query.source(params[:source]) if params[:source]

  	@all_cases = query
  	respond_with  @all_cases
  end
end
