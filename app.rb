require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/word_count')
  require('pry')

  get('/') do
    erb(:form)
  end

  get('/display') do
    paragraph = params.fetch('paragraph')
    word = params.fetch('word')
    @result1 = paragraph.word_count1(word)
    @result2 = paragraph.word_count2(word)
    erb(:form)
  end
