require 'data_mapper'
require 'dm-postgres-adapter'
DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "postgres://localhost/bookmarker")


class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String

  # DataMapper.finalize
end
