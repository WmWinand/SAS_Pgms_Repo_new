proc print data=sashelp.cars;
run;

data cars_usa;
	set sashelp.cars;
	where origin="USA";
run;

proc print data=cars_usa;
run;