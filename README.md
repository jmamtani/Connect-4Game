# Connect Four Game

## Overview
This project is a MATLAB-based implementation of the classic Connect Four game, developed our team as part of the ENGR 1182 class at The Ohio State University. The game allows two players to compete against each other by dropping discs into a vertically suspended grid, aiming to connect four of their own discs vertically, horizontally, or diagonally before their opponent.

## Features
- Graphical User Interface (GUI) for engaging gameplay.
- Two-player mode allowing for competitive play on the same computer.
- Dynamic board updates after each player's move.
- Win detection for vertical, horizontal, and diagonal connections.
- Option to play multiple rounds without restarting the program.

## Prerequisites
To play this game, you will need:
- MATLAB
- The Simple Game Engine 

## Installation
1. Download the project files or clone the repository to your local machine.
2. Make sure the `simpleGameEngine` is correctly placed in the same directory as the project files or properly linked.
3. Launch MATLAB and navigate to the directory containing the game files.

## How to Play
1. Start the game by running the `connect_four.m` script in MATLAB.
2. The game will prompt Player 1 and Player 2 to enter their usernames.
3. The game board will be displayed, and Player 1 (Red) will be prompted to make the first move by entering a column number (1-7) where they wish to place their piece.
4. Player 2 (Black) will then make their move in a similar fashion.
5. Play continues to alternate between Player 1 and Player 2 until one player connects four of their discs in a row (vertically, horizontally, or diagonally) or until the board is full.
6. The game announces the winner and offers the players an option to play again.

## Gameplay Rules
- Players take turns dropping one of their discs at a time into an unfilled column of their choice.
- The disc falls straight down, occupying the lowest available space within the column.
- The first player to form a horizontal, vertical, or diagonal line of four of their discs wins the game.
- If the board is filled completely without any players connecting four, the game is considered a draw.

## Contributing
Feedback and contributions are welcome. Please feel free to fork the repository, make your changes, and submit a pull request for review.

## Acknowledgements
Our heartfelt thanks to the instructors and teaching assistants of the ENGR 1182 course at The Ohio State University for their support and guidance throughout this project.


