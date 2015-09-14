require 'api_helper'

class MediasController < ApplicationController

  def index

  end

  def instagram_redirect
    if params[:tag].present?
      redirect_to search_results_path(params[:source], params[:tag])
    else
      flash[:errors] = "Please enter a hashtag to search."
      redirect_to search_path
    end
  end

  def search_results
    @query = params[:hashtag]
    processed_query = sanitize(@query)
    @source = params[:source]
    @results = ApiHelper.hash_search(processed_query, @source).first(5)
    if @results.count == 0
      flash[:notice] = "No results matching '#{@query}'."
    end
    render 'search'
  end

private

  def sanitize(input)
    input.delete("#")
  end
end
