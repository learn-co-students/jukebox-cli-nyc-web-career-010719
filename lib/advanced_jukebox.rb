#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/katiepennachio/Development/jukebox-cli-nyc-web-career-010719/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/katiepennachio/Development/jukebox-cli-nyc-web-career-010719/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/katiepennachio/Development/jukebox-cli-nyc-web-career-010719/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/katiepennachio/Development/jukebox-cli-nyc-web-career-010719/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/katiepennachio/Development/jukebox-cli-nyc-web-career-010719/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/katiepennachio/Development/jukebox-cli-nyc-web-career-010719/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/katiepennachio/Development/jukebox-cli-nyc-web-career-010719/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  songs = my_songs.keys
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end



def play(my_songs)
  puts "Please enter a song name:"
  selected_song = gets.chomp
  if !my_songs.keys.include?(selected_song)
    puts "Invalid input, please try again"
  else
    my_songs.each do |key, value|
      if key == selected_song
        system "open #{value}"
      end
    end
  end
end




def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  until command == "exit"
    if command == "list"
      list(my_songs)
    elsif command == "play"
      play(my_songs)
    elsif command == "help"
      help
    else
      puts "Invalid input, please try again"
    end
    puts "Please enter a command:"
    command = gets.chomp
  end
  if command == "exit"
  exit_jukebox
  return
  end
end
