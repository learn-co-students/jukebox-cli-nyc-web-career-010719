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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs that you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please select a song by number, or by using the case-sensitive format 'Band - Song': "
  selection = gets.chomp

  if validate_song_name_or_number(selection, songs)[1]
    if validate_song_name_or_number(selection, songs)[0]
      puts "Playing #{selection}"
    else
      puts "Playing #{songs[selection.to_i - 1]}"
    end
  else
    puts "Invalid input, please try again"
  end
end

def validate_song_name_or_number(user_input, songs)
  songs.each_with_index do |song, i|
    if user_input == i.to_s
      return [false, true]
    end

    if song == user_input
      return [true, true]
    end
  end
  return [false, false]
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  command = ""
  until command == "exit"
    puts "Please enter a command:"
    command = gets.chomp
    case command
    when "exit"
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help()
    end
  end
  exit_jukebox()
end
