Likeable.setup do |likeable|
  likeable.redis  = Redis.new(:port => 3000)
end