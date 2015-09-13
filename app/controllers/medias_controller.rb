class MediasController < ApplicationController
  def instagram_hash_redirect
  if params[:user].present?
    redirect_to search_results_path(params[:source], params[:user])
  else
    flash[:errors] = "Please enter a hashtag to search."
    redirect_to search_path
  end
end

# this displays results on the search page
  def search_results
    @query = params[:user]
    processed_query = sanitize(@query)
    @source = params[:source]
    @results = ApiHelper.user_search(processed_query, USER_COUNT, @source)
    if @results.count == 0
      flash[:notice] = "No users matching '#{@query}'."
    end
    render 'search'
  end

private

  def sanitize(input)
    input.delete("#")
  end
end
