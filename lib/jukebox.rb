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

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp 

#puts say_hello(users_name)

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays the list of songs you can play
  - play : lets you choose a song to play 
  - exit : exits the program"
end

def list(songs)
  songs.each_with_index { |value, index| 
  index = index + 1
  puts "#{index}. #{value}"}
end
  
def play(songs)
  songs_down = []
  songs.each do |i|
    songs_down << i.downcase
  end 
  puts "Please enter a song name or number:"
  song_choice = gets.downcase.chomp
  if (1..9).to_a.include?(song_choice.to_i)
    puts "Playing #{songs[song_choice.to_i - 1]}"
  elsif songs_down.include?(song_choice)
    puts "Playing #{song_choice.capitalize}"
  else 
    puts "Invalid input, please try again"
  end 
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help 
  command = ""
  while command
  puts "Please enter a command:"
  command = gets.downcase.strip
  case command 
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else 
      help 
    end 
  end
end

