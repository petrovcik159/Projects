function rotated = rotateRight( M, shift )
% Performs cyclic shift of vector's position - the ROR operation.
% Performs horizontal ROR, if a matrix is supplied, rotate all rows.
% The scalar shift specifies how many positions to rotate
%	if negative, a ROL operation is performed.

% Exercise: complete the code to obtain required functionality
n = size(M,2);
shift = mod(shift,n);
	%implement left shift as negative shift
rotated = [M(:,end-shift+1:end), M(:,1:end-shift)];
end 
