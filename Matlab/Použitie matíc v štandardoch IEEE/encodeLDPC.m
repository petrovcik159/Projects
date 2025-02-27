function [ Codeword, A, B, T, C, D ,E ,TI ] = encodeLDPC( U, H, Z )
% Perform LDPC direct encoding procedure as specified in the 
% IEEE 802.16e standard Annex G.
% Input arguments:
%	U is the data word - the data bits
%	H is a sparse large binary parity check matrix of size m x n
% Return value:
%	Codeword - the systematic codeword
%	various interesting submatrices of H for debugging
if nargin == 3
	z = Z ;
end

[ m, n ] = size( H ) ;
k = n - m ;

if ~exist('z','var') || isempty( z )
	z = n / 24 ;
end

U = U(:)';

% Exercise: complete the code to obtain required functionality
% Note: Don't forget the GF(2) (aka boolean) arithmetic approximation

%partition  the matrix according to Annex G.6 Method 2

A = H(1:m-z, 1:k);
B = H(1:m-z, k+1:n);
T = H(m-z+1:m, 1:m-z);

C = H(1:m-z, k+1:n);
D = H(m-z+1:m, k+1:n);
E = H(m-z+1:m, m-z+1:n);

TI = gf2inv(T);		% Inverse of T over GF(2)


%test GF(2) inverse of double diagonal matrix
test = mod( T * TI, 2 ) ;
if ~isequal( test, eye( m - z ) )
	error('Matrix inversion GF(2) failed.') ;
end

%also test the identity from lecture here



P1 = mod(U*A, 2); 
P2 = mod(U*B, 2);

Codeword = [ U ; P1 ; P2 ] ;
end

function TI = gf2inv(T)
[m,n] = size(T);

augmented = [T,eye(m)];
for i = 1:m
    if augmented(i,i) == 0
        for j=i+1:m
            if augmented(j,i) == 1
                augmented([i,j], :) = augmented([j,i], :);
                break;
            end
        end
    end
    for j=i+1:m
        if augmented(j,i) == 1
            augmented(j,:) = mod(augmented(j,:) + augmented(i,:), 2);
        end
    end
end
for i=m:-1:1
    for j=i-1:-1:1
        if augmented(j,i) == 1
            augmented(j,:) = mod(augmented(j,:) + augmented(i,:), 2);
        end
    end
end
TI = augmented(:, n+1:end);
end

function H = WIFI6_LDPC_ExpandH( Hbm, z )
	[ mb, nb ] = size( Hbm ) ;
	N = nb * z ;
	M = mb * z ;
	H = zeros( M, N ) ;

	for r = 1 : 1 : mb
		for c = 1 : 1 : nb
			shift = Hbm(r, c);
			if shift == -1 
                H((r-1)*z + (1:z), (c-1)*z + (1:z)) = zeros(z,z);
            else
                podmatica = cyclicShiftMatrix(z,shift);
                H((r-1)*z + (1:z), (c-1)*z + (1:z)) = podmatica;
            end
        end
	end
end
