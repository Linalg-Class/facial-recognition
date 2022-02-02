function unique_id = create_unique_id(faces_map)
    
    % find maximum ID number
    max_id = 2 ^ 12;
    while max_id < size(faces_map, 1) / 2
        max_id = max_id * 2;
    end

    % find random, unused ID number
    id = random('Uniform', 0, max_id);
    while ~ isKey(faces_map, id)
        id = random('Uniform', 0, max_id);
    end

    unique_id = id;

    clear max_id id;
end

function id = create_new_entry(faces_map, name, weights)
    personal_map = containers.Map({"name", "weights"}, {name, weights});
    add(faces_map, create_unique_id(faces_map), personal_map)
end
