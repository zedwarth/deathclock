configure :development do
  set :database, 'sqlite:///dev.db'
  set :show_exceptions, true
  load 'private/auth_credentials.rb'
end

configure :production do
  db = URI.parse(ENV['HEROKU_POSTGRESQL_BLUE_URL'] || 'postgres:///localhost/mydb')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end