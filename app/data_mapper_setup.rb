require 'data_mapper'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager")

require './lib/models/link'

DataMapper.finalize

DataMapper.auto_upgrade!