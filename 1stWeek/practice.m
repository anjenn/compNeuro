a = [1 2 ; 3 4]; % === [1,2;3,4]
b = [ 1 2 ; 0 1];
a;
a*a;
s = a + b;
inv(s);
s * inv(s); % possible iff its determinent det(s) is non-zero
s/s; % same as s * inv(s)
s\s; % reverse division => inv(s) * s

% ax + by = p % can be written more compactly as AX = B
% cx + dy = q
% where coefficient matrix A == [a b ; c d] and X == [x;y] and B == [p;q]

t = 0:.3:10; % range from 0 to 10 with steps of 0.3
y = sin(t);
% plot(t, y);
[x,y] = meshgrid(-2:.2:2, -2:.2:2);
z = x .* exp(-x.^2 - y.^2);
% surf(x,y,z);

x = 1:10; % 1 2 3 4 5 ,....creates a unit-spaced vector x with elements [j,j+1,j+2,...,j+m]
x = 1:2:10; % 1 3 5 ... j:i:k creates a regularly-spaced vector x using i as the increment between elements.

% A(:,n) is the nth column of matrix A.
% A(m,:) is the mth row of matrix A.
% A(:,:,p) is the pth page of three-dimensional array A.
% A(:) reshapes all elements of A into a single column vector. This has no effect if A is already a column vector.
% A(:,:) reshapes all elements of A into a two-dimensional matrix. This has no effect if A is already a matrix or vector.
% A(j:k) uses the vector j:k to index into A and is therefore equivalent to the vector [A(j), A(j+1), ..., A(k)].
% A(:,j:k) includes all subscripts in the first dimension but uses the vector j:k to index in the second dimension.
% % This returns a matrix with columns [A(:,j), A(:,j+1), ..., A(:,k)].


% A = [1 2 3;
%      2 3 4;
%      3 4 5;
%      4 5 6]
% A(:,1:3) % spans from column 1 to 3
% A(1:3,:) % spans from row 1 to 3
% A(:,:) % returns original matrix

% .* operator multiplies each element in the same location in 2 matrices


%%%%%%%%%%%%%%%

B = [2,2; 3,3; 4,4];
d = [1,2,3];
f = [8;9];
repmat = repmat(f, 2, 2) % for repmat(A, m, n)
% m is the number of times to repeat A in the row direction.
% n is the number of times to repeat A in the column direction.

q =[1 1 2 2 1 3 2 2 3 1]
q == 3 % executes bitwise operation that performs 3&&x on each bit
find(q==3, 1) % returns the index that first encounters 3
q(q<3)=0 % returns array with everything below 3 nulled
