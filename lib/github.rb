require 'faraday'

def getConn

end


class GithubWorker

  def perform(repository)
    conn = Faraday.new(:url => 'https://api.github.com') do |builder|
      # or, use shortcuts:
      builder.request  :url_encoded
      builder.request  :json
      builder.response :logger
      builder.adapter  :net_http
    end
    
    repo = Repository.new do |repo|
    
    end
    repo.save
    
  end
  
  
end