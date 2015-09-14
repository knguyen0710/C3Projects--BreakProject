class ApiHelper

  def self.hash_search(query, source)
    case source
    when ApplicationController::INSTAGRAM
      InstagramApi.new.hash_search(query)
      raise
    end
  end

end
