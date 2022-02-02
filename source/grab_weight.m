
function c = compare(thisWeight, newimg_weight, constant)%Compares the weight of a face with another.
    diff = norm(newimg_weight - thisWeight);%subtracts thisWeight from newimg_weight
    if diff <= constant%Sees if this is below the set constant.
        c = 1;%True
    else
        c = 0;%False
    end 
end
function f = find_face(data, face, newimg_weight, constant)%Finds the face
    sm = NaN;%Set to the value 'None' 
    for i = 1:size(data, 1)%Goes through each row of the data set.
        c = compare(find_weight(i), newimg_weightm constant);%Compares face (represented by row) of the data set to the face passed into the function.
        if c == 1%True
           if isnan(sm) %Empty then just set to row.
               sm = i;
           else
               if find_weight(sm) > find_weight(i)%If weight of sm is larger then new row.
                   sm = i;%Then now the closest face is this row.
               end
           end
        end
    end
    if should_face_be_added(sm) == 1 %See if face is not in data set.
        add_to_data(data,face) %If true add to data set.
    end 
    f = sm;%Else return the face. 
end
function t = should_face_be_added(row)%Takes in row.
    t = 0;
    if isnan(row)%Row is still empty
        t = 1;%Then there is no face which is a match. 
    end
end
function add_to_data(data, face) %Implement when data is available.
end