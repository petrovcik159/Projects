function H = WIFI6_LDPC_ExpandH( Hbm, z )
%Uncompress the model matrix Hbm to binary sparse matrix H.
%	Hbm		- model matrix specifies H in a compressed integer format.
% 	z		- tier (submatrix) size
% returns:
%	H		- binary parity check matrix of size M x N

	[ mb, nb ] = size( Hbm ) ;
	N = nb * z ;
	M = mb * z ;

	%construct the binary parity check matrix
	H = zeros( M, N ) ;

	for r = 1 : 1 : mb
		for c = 1 : 1 : nb
			shift = Hbm(r, c);
			%only fill code in this area - leave everything else untouched ----
			if shift == -1 
                H((r-1)*z + (1:z), (c-1)*z + (1:z)) = zeros(z,z);
            else
                podmatica = cyclicShiftMatrix(z,shift);
                H((r-1)*z + (1:z), (c-1)*z + (1:z)) = podmatica;
            end
			% Exercise: complete the code to obtain required functionality
			%------------------------------------------------------------------
         end
	end
end
