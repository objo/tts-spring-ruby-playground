require_relative 'artist'

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

@bill_joel = Artist.new('Billy Joel')
@bill_joel.create_song('Honesty', 197)
@bill_joel.create_song('Allentown', 243)
@bill_joel.create_song("We didn't start the Fire", 178)
@bill_joel.create_song("Goodnight Saigon", 302)

motley_crue = Artist.new('Motley Crew')
motley_crue.create_song('Wild Side', 254)

skid_row = Artist.new('Skid Row')
skid_row.create_song('Youth Gone Wild', 238)
