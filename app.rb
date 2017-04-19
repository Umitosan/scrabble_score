require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_code')
require('rspec')
require('pry')
also_reload('lib/**/*.rb')

get('/hello') do
  "Hello Friend!"
end

get('/form') do
  erb(:form)
end

get('/scrabble') do
  @sentence = params.fetch('sentence').word_score()
  erb(:scrabble)
end
