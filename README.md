# trap-dot
A fun little dot game (IT'S A TRAP!) to build with new coding students.


## Level 1: Dot Finder
In-code instructions found in `dot_finder_lab.rb`

### Purpose

In Trap Dot: Level 1, you will build a basic dot finder game. At the start, your current position marker is located at 0,0 (marked by the "X"). Your goal is to move the marker to the treasure (marked by the "$"). When your current position marker is the same as the treasure marker, you have won the game!

### Steps
As the in-code instructions in `dot_finder_lab.rb` outline, there are 5 main tasks to complete:
- **Create the game board**. Default dimensions are 10 lines across, 10 lines tall.
- **Place the current position marker**. Default position for the start of the game is at 0,0.
- **Place the treasure**. Generate random coordinates for the treasure marker on the board.
- **Create logic for completing the game**. This includes both the winning outcome (reaching the treasure) or the losing outcome (moving your marker off the board).
- **Create logic for moving the current position marker** in a specified direction (down, up, left, right) until the player has completed the game. *For an extra challenge, allow the player to move diagonally!*

The in-code instructions set up a skeleton that accounts for the 5 tasks above. However, feel free to scrap the outline in favor of a clean slate!


### Game screenshots
Below are screenshots from an example version of the game.

#### Start
![Start of the game](images/start.png)

#### Moving to the right
![Moving to the right](images/move_right.png)

#### Winning the game
You win the game when your marker finds the treasure!
![You've found the treasure!](images/winner.png)

#### Losing the game
You lose the game at level 1 when you've moved your marker off the board.
![Losing the game](images/off_the_board.png)
