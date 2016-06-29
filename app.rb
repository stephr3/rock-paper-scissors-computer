require('sinatra')
require('sinatra/reloader')
require('./lib/r_p_s')
also_reload('lib/**/*.rb')

get('/') do
  erb(:player_one)
end

get('/results') do
  @player_one = params.fetch('player_one')
  @computer = 3.randomizer()
  @results = (params.fetch('player_one')).beats?(@computer)

  erb(:results)
end
