require 'data_mapper'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager")

require './lib/models/link'
require './lib/models/tag'

DataMapper.finalize

DataMapper.auto_upgrade!

