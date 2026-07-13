/* cap input rows for the captured run */
options obs=100;

/* Sample Audi rows so the WHERE Make="Audi" filter and the
   substr()/IF-THEN Series derivation have data to work on. */
data work.cars;
    length Make $13 Model $40;
    input Make $ Model $ MSRP;
    datalines;
Audi A4_1.8T_4dr 25940
Audi A4_3.0_4dr 31840
Audi A6_3.0_4dr 36640
Audi A6_3.0_Avant_Quattro 40840
Audi A8_L_Quattro_4dr 69190
Audi S4_Quattro_4dr 48040
Audi TT_1.8_convertible_2dr 35940
Audi RS_6_4dr 84600
;
run;
