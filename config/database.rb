MongoMapper.connection = Mongo::Connection.new('localhost', nil, :logger => (logger if Padrino.env == :development))

case Padrino.env
  when :development then MongoMapper.database = 'padrino_jp_www_development'
  when :production  then MongoMapper.database = 'padrino_jp_www'
  when :test        then MongoMapper.database = 'padrino_jp_www_test'
end
