function [Binary_Win] = Did_You_Win(board, player_num)
%UNTITLED Summary of this function goes here
% Detailed explanation goes here
% initializing counter to count how many consecutive tiles there are in
% every possible direction
% horizontal case:
counter_left = 0;
counter_right = 0;
% vertical case:
counter_up = 0;
counter_down = 0;
% left-upper diagonal case:
counter_left_upper_diag = 0;
counter_right_upper_diag = 0;
% right-upper diagonal case:
counter_left_downward_diag = 0;
counter_right_downward_diag = 0;
flag = 0; % global variable needed to break out of the nested for loops
Binary_Win = 0;
for r = 1:6 % for loop iterates through all of the rows
for c = 1:7% for loop iterates through all of the columns
if board(r, c) == player_num % condition that the tile currently
% being looked at is the players tile we are trying to find
for left = 1:3 % iterates to the maximal direction to the left
if c – left >= 1 % condition that the iterator must stay in the board
if board(r, c – left) == player_num % counts al of the consecutive tiles
counter_left = counter_left + 1;
else
break; % stops the loop at the first tile not matching the player tile
end
end
end
for right = 1:3% iterates to the maximal direction to the right
if c + right <= 7 % condition that the iterator must stay in the board
if board(r, c + right) == player_num % counts all of the consecutive tiles
counter_right = counter_right + 1;
else
break; % stops the loop at the first tile not matching the player tile
end
end
end
for up = 1:3% iterates to the maximal direction upwards
if r + up <= 6 % condition that the iterator must stay in the board
if board(r + up, c) == player_num % counts all of the consecutive tiles
counter_up = counter_up + 1;
else
break; % stops the loop at the first tile not matching the player tile
end
end
end
for down = 1:3% iterates to the maximal direction downwards
if r – down >= 1 % condition that the iterator must stay in the board
if board(r – down, c) == player_num % counts all of the consecutive tiles
counter_down = counter_down + 1;
else
break; % stops the loop at the first tile not matching the player tile
end
end
end
for left_upper_diag = 1:3 % iterates to the maximal direction diagonally
if r + left_upper_diag <= 6 && c – left_upper_diag >= 1 % condition that the iterator must stay in the board
if board(r + left_upper_diag, c – left_upper_diag) == player_num % counts all of the consecutive tiles
counter_left_upper_diag = counter_left_upper_diag + 1;
else
break; % stops the loop at the first tile not matching the player tile
end
end
end
for right_upper_diag = 1:3 % iterates to the maximal direction diagonally
if r + right_upper_diag <= 6 && c + right_upper_diag <= 7 % condition that the iterator must stay in the board
if board(r + right_upper_diag, c + right_upper_diag) == player_num % counts all of the consecutive tiles
counter_right_upper_diag = counter_right_upper_diag + 1;
else
break; % stops the loop at the first tile not matching the player tile
end
end
end
for left_downward_diag = 1:3 % iterates to the maximal direction diagonally
if r – left_downward_diag >= 1 && c – left_downward_diag >= 1 % condition that the iterator must stay in the board
if board(r – left_downward_diag, c – left_downward_diag) == player_num % counts all of the consecutive tiles
counter_left_downward_diag = counter_left_downward_diag + 1;
else
break;
end
end
end
for right_downward_diag = 1:3 % iterates to the maximal direction diagonally
if r – right_downward_diag >= 1 && c + right_downward_diag <= 7 % condition that the iterator must stay in the board
if board(r – right_downward_diag, c + right_downward_diag) == player_num % counts all of the consecutive tiles
counter_right_downward_diag = counter_right_downward_diag + 1;
else
break; % stops the loop at the first tile not matching the player tile
end
end
end
if counter_left + counter_right + 1 >= 4 % condition that there is atleast 4 consecutive tiles
Binary_Win = 1; % player won the game
flag = 1; % break the nested for loops
elseif counter_up + counter_down + 1 >= 4 % condition that there is atleast 4 consecutive tiles
Binary_Win = 1; % player won the game
flag = 1; % break the nested for loops
elseif counter_left_upper_diag + counter_right_downward_diag + 1 >= 4 % condition that there is atleast 4 consecutive tiles
Binary_Win = 1; % player won the game
flag = 1; % break the nested for loops
elseif counter_left_downward_diag + counter_right_upper_diag + 1 >= 4 % condition that there is atleast 4 consecutive tiles
Binary_Win = 1; % player won the game
flag = 1; % break the nested for loops
else
Binary_Win = 0; % player did not win the game
flag = 0; % continue to iterate through all of the tiles
end
if flag == 1 % condition to break out of the first for loop
break;
end
end %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if flag == 1 % condition to break out of the second for loop
break;
end
% reseting the counters to zero after every tile
counter_left = 0;
counter_right = 0;
counter_up = 0;
counter_down = 0;
counter_left_upper_diag = 0;
counter_right_upper_diag = 0;
counter_left_downward_diag = 0;
counter_right_downward_diag = 0;
end
if flag == 1 % condition to break out of the third for loop
break;
end
end
end
