## DOT FINDER

board_height = 10
board_width = 10

def place_treasure
  # this method should return an array with two random values, latitude and longitude.
  # it should take in two arguments, a board height and width.
end

def move_right
  # this method should move the current position by one dot to the right
  # it should return the current position
end

def move_left
  # this method should move the current position by one dot to the left
end

def move_up
  # this method should move the current position by one dot upwards
end

def move_down
  # this method should move the current position by one dot downwards
end

def get_move
  # this method should ask for a move from the game player (either right, left, up, or down)
  # it should execute that move, changing the current coordinates
  # it should prompt an invalid response if the player does not choose right, left, up, or down
end

def create_board
  # this method should print the game board to the terminal
  # treasure and current position markers (special markers) should be visible on the board, and be distinguishable from one another, e.g. " X " for current position, " $ " for treasure position.
  # non-special position markers should be indicated by a dot, " . "
end

def run_game
  # this method should contain all of the logic to play the game, accounting for successful (find the treasure) and unsuccessful (fall off the board) outcomes!
end


# call the `run_game` method to play the game
run_game
