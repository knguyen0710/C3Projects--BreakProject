class InstagramApi
  INSTA_TAG = "https://api.instagram.com/v1/tags/"

  def hash_search(query)
    response = HTTParty.get(INSTA_TAG + query + "/media/recent?access_token=#{ENV["INSTAGRAM_ACCESS_TOKEN"]}" )

    return response["data"]
  end

  def embed_html_with_js(link)
    response = HTTParty.get(INSTA_OEMBED_URI + link)

    return response["html"]
  end
end
