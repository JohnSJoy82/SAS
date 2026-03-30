data Audi;
    set sashelp.cars(keep=Make Model MSRP);
    length Series $ 5;
    where Make="Audi";
    SeriesCode=substr(left(Model),1,1);
    if SeriesCode="A" then Series="A";
    else Series="Other";
    keep Make Model Series MSRP;
run;