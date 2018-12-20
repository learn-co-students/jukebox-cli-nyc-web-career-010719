require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]



def help
puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end

end


def play(songs)
  puts "Please enter a song name or number:"
  selected_song = gets.chomp
  if songs.include?(selected_song)
        puts "Playing #{selected_song}"
  elsif selected_song.to_i > 0 && selected_song.to_i <= songs.length
    puts "Playing #{songs[selected_song.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  until command == "exit"
    if command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
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
