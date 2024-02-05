clc
clear
username1 = input(‘Player 1, enter your username: ‘, ‘s’); % inputting player 1 username
username2 = input(‘Player 2, enter your username: ‘, ‘s’);% inputting player 2 username
Checker_Board = simpleGameEngine(‘ConnectFour.png’, 86, 101); % initializing the GameEngine
% Checker_Board object with the simpleGameEngine class.
board = [1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1]; % all empty slots matrix
drawScene(Checker_Board, board) % drawing the scene
total_turns = 42; % maximum total turns that can be played on the board
play_again = 1; % initial condition to keep playing the game
while play_again == 1 % continue to keep playing the game if the user specifies to
board = [1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1; 1, 1, 1, 1, 1, 1, 1];
drawScene(Checker_Board, board)
while total_turns > 0 && Did_You_Win(board, 2) == 0 && Did_You_Win(board, 3) == 0 % condition that neither of the players have won the game and that there are still turns left
% getting player1 move
player_1_move = input(‘Player 1, place your piece (Red). Type the column number from 1 to 7 and do not \nplace pieces in a column that are already full: ‘);
matrix_parse = board(:, player_1_move); % parsing the matrix to get the column
row = 0;
for i = 6:-1:1 % for loop to find the first empty slot from bottom to top of the column vector
if matrix_parse(i, 1) == 1
row = i; % setting the row equal to the first empty slot
break; % stopping the loop
end
end
board(row, player_1_move) = 2; % drawing the board and displaying the board
title(‘Player 2, it is your turn, place your piece!’)
drawScene(Checker_Board, board)
total_turns = total_turns – 1; % decrementing the turns
if Did_You_Win(board, 2) == 1 % checking if the new player move has made a gaming winning combination
fprintf(‘\nThe game is over! Player 1, %s won!!’, username1)
break; % ending the game
end
% inputting player 2 username
player_2_move = input(‘Player 2, place your piece (Black). Type the column number from 1 to 7 and do not \nplace pieces in a column that are already full: ‘);
matrix_parse = board(:, player_2_move); % parsing the matrix to get the column
row = 0;
for i = 6:-1:1 % for loop to find the first empty slot from bottom to top of the column vector
if matrix_parse(i, 1) == 1
row = i; % setting the row equal to the first empty slot
break; % stopping the loop
end
end
board(row, player_2_move) = 3; % drawing the board and displaying the board
title(‘Player 1, it is your turn, place your piece’)
drawScene(Checker_Board, board)
total_turns = total_turns – 1; % decrementing the turns
if Did_You_Win(board, 3) == 1 % checking if the new player move has made a gaming winning combination
fprintf(‘\nThe game is over! Player 2, %s won!!’, username2)
break; % ending the game
end
end
play_again = input(‘\n\nDo you want to play another round of Connect4? Enter ”1” to play again and ”0” to not play again.’ ); % asking to the player if they want to replay the game
end
fprintf(‘\n\nThank you for playing Connect4! Come back again!’) % printing header