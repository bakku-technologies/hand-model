function data_degrees = USImageToHandSim(img)
    
    endpoint = "http://localhost:5000/api/predictAngles";
    options = weboptions('RequestMethod', 'post');
    res = webread(endpoint, img, options);

    data = JSON.parse(res);
    data_degrees = data*180/pi;

    MakeHand(0, 0, data(1), data(2), data(3), data(4));

end

