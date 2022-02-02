function randomized = randomize_columns(A, numcols) %this function will take in a percentage and o
    cols = size(A,2); 
    
    if(numcols < 1)
       numcols = fix(numcols * cols);
    end
    
    p = randperm(size(A,2)); % random list of columns 
    Anew = A(:, p) ; % reorganize A in the new order of columns
    randomized = Anew(:, 1:numcols) %uses only a certain percentage of the columns of Anew
end
