function k = coneTruncatedSlices( geom )

if geom.helicalScan
    warning('no implemented for helical scan! ');
    k = 0;
    return;
end

detHeight = geom.detSize(2) * geom.detSpacing(2); 

volHeight = detHeight * ( geom.SAD - 100 )/ geom.SDD;

k = round( ( geom.reconSize(3) - volHeight / geom.reconSpacing(3) ) / 2 );

end