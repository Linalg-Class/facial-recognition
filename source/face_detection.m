function result = find_faces_func(imgg, n, m)
    detector = vision.CascadeObjectDetector;
    bbox = detector(imgg);
    bbox_sz1 = size(bbox, 1);

    if bbox_sz1 ~= 0
        cropped = imcrop(imgg, bbox(bbox_sz1, :));
        resized = imresize(cropped, [n m]);
        result = reshape(resized, 1, [])';
    else
        result = [];
    end

end
