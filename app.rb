# Required Gems
require 'lastfm'
require 'sinatra'


# Set up Homepage
get '/' do  
  
  lastfm = Lastfm.new('46cb8cdfeeea4f53ed9b439d46ae0e05', 'b3cad171632a35c8b986cc676a6ea941')
  @tracks = lastfm.user.get_recent_tracks(:user => 'discoliam', :limit => 10)

  erb :list

end 