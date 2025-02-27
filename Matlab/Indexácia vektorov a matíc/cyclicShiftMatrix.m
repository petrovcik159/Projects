function M = cyclicShiftMatrix( Size, Shift )
% Generate a square permutation matrix if size Size.
% The permutation is a right rotation (cyclic shift) - the ROR operation.
% That is the right-multiplication of a row-vector by this matrix performs 
% a cyclic shift of vector's position - the ROR operation.
% The scalar shift specifies how many positions to rotate
% if negative, a ROL operation is performed.

% Exercise: Implement the code to obtain required functionality, 
% the use of any kind of loops is prohibited.
% Note: Observe how the variable name Size doesn't interfere with built-in
% function size(). However, this is not a good practice.
M = eye(Size);
M = rotateRight(M, Shift);
end
