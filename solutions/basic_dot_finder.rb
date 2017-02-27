require 'colorize'
require 'pry'


def generate_coordinates
  [rand(10), rand(10)]
end

def print_board(key, current)
  key_lat, key_long = key
  current_lat, current_long = current

  puts "\n"
  for long in 0..10
    for lat in 0..10
      if lat == key_lat && long == key_long
        print " $ ".colorize(:color => :green, :background => :black)
      elsif lat == current_lat && long == current_long
        print " x ".colorize(:color => :red, :background => :black)
      else
        if key == current
          print " . ".colorize(:color => :black, :background => :green)
        else
          print " . ".colorize(:color => :black, :background => :yellow)
        end
      end
    end
    puts "\n"
  end
end

def move_right(key_coordinates, current_coordinates)
  current_coordinates[0] += 1
  print_board(key_coordinates, current_coordinates)
  current_coordinates
end

def move_left(key_coordinates, current_coordinates)
  current_coordinates[0] -= 1
  print_board(key_coordinates, current_coordinates)
  current_coordinates
end

def move_up(key_coordinates, current_coordinates)
  current_coordinates[1] -= 1
  print_board(key_coordinates, current_coordinates)
  current_coordinates
end

def move_down(key_coordinates, current_coordinates)
  current_coordinates[1] += 1
  print_board(key_coordinates, current_coordinates)
  current_coordinates
end


def get_move(key, current)
  puts "\nYou're at [#{current[0]}, #{current[1]}].\nWhere would you like to move?"
  puts "A) Left"
  puts "D) Right"
  puts "W) Up"
  puts "S) Down"
  answer = gets.chomp.downcase
  if answer == "a" || answer == "left"
    move_left(key, current)
  elsif answer == "d" || answer == "right"
    move_right(key, current)
  elsif answer == "w" || answer == "up"
    move_up(key, current)
  elsif answer == "s" || answer == "down"
    move_down(key, current)
  else
    puts "Invalid response."
  end
end


def run_game
  key = generate_coordinates
  current = [0,0]
  print_board(key, current)

  until key == current
    if current[0] >= 0 && current[1] >= 0
      get_move(key, current)
    else
      puts "\n\nYou're off the board! Goodbye!\n\n".colorize(:blue)
      break
    end
    if key == current
      puts "\n\nYou've found the treasure!\n\n".colorize(:green)
    end
  end
end



run_game
