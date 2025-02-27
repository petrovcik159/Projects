function [ Rx ] = random( Lim, Si, flag ) 
    a = Lim(1);
    b = Lim(2);
    M = Si(1);
    N = Si(2);

    switch flag
        case 'uniform'                
            Rx = a + (b-a) * randn(M,N);
        case 'normal'
            Rx = a+ sqrt(b) * randn(M,N);
    end
end
