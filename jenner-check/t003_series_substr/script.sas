data Audi;
    set work.cars(keep=Make Model MSRP);
    length Series $ 5;
    where Make="Audi";
    SeriesCode=substr(left(Model),1,1);
    if SeriesCode="A" then Series="A";
    else Series="Other";
    keep Make Model Series MSRP;
run;

title "Audi Series derived from Model";
proc print data=Audi;
run;
title;
