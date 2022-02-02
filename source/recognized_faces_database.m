load ../faces/

faces = zeros(n*6,m*6);




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