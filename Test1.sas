proc print data = sashelp.cars (obs=10);
run;

/*  */
/* Step 2: Sort data by type and MSRP */
proc sort data=sashelp.cars out=cars_sorted;
  by type MSRP;
run;
