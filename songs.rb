class Artist
  
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Song

  attr_reader :name, :artist

  def initialize(name, duration, artist)
    @name = name
    @duration = duration
    @artist = artist
  end

  def duration
    "#{@duration / 60} minutes and #{@duration % 60} seconds"
  end

  def full_description
    "#{@name} by #{@artist.name}, #{duration}"
  end

end

billy_joel = Artist.new('Billy Joel')
motley_crue = Artist.new('Motley Crew')
skid_row = Artist.new('Skid Row')

song_1 = Song.new('Honesty', 197, billy_joel)
song_2 = Song.new('Wild Side', 254, motley_crue)
song_3 = Song.new('Youth Gone Wild', 238, skid_row)


puts "Song Names"
puts song_1.name
puts song_2.name
puts song_3.name

puts "Song Durations"
puts song_1.duration
puts song_2.duration
puts song_3.duration

puts "Full description"
puts song_1.full_description
puts song_2.full_description
puts song_3.full_description
