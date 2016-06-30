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
  if @results
    @text = "You won!"
  elsif @computer.==(@player_one)
    @text = "It was a tie!"
  else
    @text = "You lost!"
  end
  erb(:results)
end
