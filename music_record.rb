require './input_functions'

module Genre
  POP, CLASSIC, JAZZ, ROCK = *1..4
end

# Array to store genre
$genre_names = ['Null', 'Pop', 'Classic', 'Jazz', 'Rock']

class Album
	attr_accessor :title, :artist, :genre
	def initialize(music_title, music_artist, music_genre)
	@music_t=music_title
	@music_a=music_artist
	@music_g=music_genre
	end
end

# Reads in and returns a single album 
# complete the missing lines
def read_album
  # Insert lines here - use read_string to get input from the     
  # terminal for title and artist, use read_integer_in_range
  # to get a genre
  # You only the need validation if reading from the terminal
  # (i.e when using a file later, you can assume the data in
  # the file is correct)

  album_title = read_string("Enter the title of the music record") #write your code here
  album_artist = read_string("Enter the artist of the music record")  #write your code here
  album_genre = read_integer_in_range("Enter the genre of the music record by choosing from the following given options: POP=1, Classic=2, Jazz=3, Rock=4,", Genre::POP, Genre::ROCK)  #write your code here

  album = Album.new(album_title, album_artist, album_genre)
  album.title = album_title
  album.artist = album_artist
  album.genre = album_genre
  album
end

# Takes a single album and prints it to the terminal
# complete the missing lines:

def print_album p_album
  puts "Album information is: "
  # insert lines here to print title and artist
  
  puts "Genre is " + p_album.genre.to_s
  puts $genre_names[p_album.genre]
end

# Reads in albums from the terminal and then prints all the 
# albums to the terminal

def main
	myalbum = read_album()
	print_album(myalbum)
end

main
