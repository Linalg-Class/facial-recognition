load ../faces/

faces = zeros(n*6,m*6);


personal;
eigenweights;

[U,S,V] = svd(faces,'econ');

%%https://www.mathworks.com/help/matlab/matlab_prog/creating-a-map-object.html

W = U'*x;
count = 1
for r = [25 50 100 200 400 800 1600];%Go through each rank for each image 
    personal = containers.Map({0,1,2,3,4,5,6,7,8,9,10},{ 'Eshann', 'Kwame', 'Adrian', 'Juliana', 'Jake', 'Jane', 'Aleks', 'Alex CC', 'Mostafa', 'Rahul','Mr C'});
    eigenweights = containers.Map({0,1,2,3,4,5,6,7,8,9,10},{U(:,1:r)*U(:,1:r)'*x});
    count = count + 1;

end;



function create_new_entry(personal_map, eigenweights_map, new_name, new_eigen_weights)
    unique_key = [keys.personal, keys.eigenweights];
    personal = personal_map;
    eigenweights = eigenweights_map;

    return unique_key;
end;

some_array = [];
function add_person(name,weights);
count = 1;
for i = 1:personal.length;
    for j = 1:eigenweights.length;%Loop through each map to 
    somearray.add(create_new_entry(personal,eigenweights,personal{i},eigenweights{j}));
    count = count + 1;
    %Creates a new entry for each person
    end;
end;
return somearray;
end

for x = 1:personal.length;
    add_person(personal{x},W);
    count = count + 1;
end;