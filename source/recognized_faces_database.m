addpath('source');

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

end

function id = create_new_entry(faces_map, name, weights)
    personal_map = containers.Map({"name", "weights"}, {name, weights});
    id = create_unique_id(faces_map);
    add(faces_map, id, personal_map);
end

function id = find_minimum_weight_distance(weights, faces_map)
    min_id = -1; min_distance = -1;

    for k = keys(faces_map)
        k_info = faces_map(k);
        distance = norm(weights - k_info('weights'));

        if distance < min_distance
            min_id = k;
            min_distance = distance;
        end
    end

    id = min_id;

end
