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

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i = 0
  while i < songs.length
    puts "#{i+1}. #{songs[i]}\n"
    i += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.chomp
  if((1..songs.length).to_a.include?(song_name.to_i))
    puts "Playing #{songs[song_name.to_i-1]}"
  elsif (songs.include?(song_name))
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  user_response = ""
  while user_response
  puts "Please enter a command:"
  user_response = gets.chomp
  case user_response
    when "list"
      list(songs)
    when "play"
      list(songs)
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end 
