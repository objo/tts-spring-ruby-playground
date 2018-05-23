class Artist
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def create_song(title, duration)
    @songs << Song.new(title, duration, self)
  end
end
