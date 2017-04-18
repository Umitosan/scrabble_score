require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_code')
require('pry')

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
