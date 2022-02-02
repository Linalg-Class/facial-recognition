function weights = find_image_weights(imgg, eigenfaces)
    weights = eigenfaces' * imgg;
end

function result = compare_weights(weights1, weights2, epsilon1, epsilon2)
    distance = norm(weights1 - weights2);

    if distance < epsilon1
        result = 1;
    elseif distance < epsilon2
        result = 0;
    else
        result = -1;
    end

end
