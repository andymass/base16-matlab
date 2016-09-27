function rgb = mix( color1, color2, weight )
    if nargin < 3
        weight = 50;
    end

    p = weight/100.0;
    w = p*2-1;

    w1 = (w + 1)/2.0;
    w2 = 1 - w1;

    rgb = floor( color1*w1 + color2*w2 );

