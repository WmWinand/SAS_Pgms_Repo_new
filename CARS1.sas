proc print data=sashelp.cars (obs=30);
run;

data cars_usa;
  set sashelp.cars;
  where origin = "USA";
run;

proc print data=cars_usa (obs=15);
run; 

proc sort data=cars_usa out=cars_usa_sorted;
  by type MSRP;
run;

	SYMBOL1
	INTERPOL=NONE
	HEIGHT=10pt
	VALUE=CIRCLE
	LINE=1
	WIDTH=2

	CV = _STYLE_
;
Axis1
	STYLE=1
	WIDTH=1
	MINOR=NONE
;
Axis2
	STYLE=1
	WIDTH=1
	MINOR=NONE
;
TITLE;
TITLE1 "Scatter Plot";
FOOTNOTE;
FOOTNOTE1 "Generated by the SAS System (&_SASSERVERNAME, &SYSSCPL) on %TRIM(%QSYSFUNC(DATE(), NLDATE20.)) at %TRIM(%SYSFUNC(TIME(), TIMEAMPM12.))";

PROC GPLOT DATA=cars_usa_sorted;
PLOT MPG_City * MPG_Highway / 
	VAXIS=AXIS1

	HAXIS=AXIS2

FRAME ;

RUN; QUIT;
%_eg_conditional_dropds(WORK.SORTTempTableSorted);
TITLE; FOOTNOTE;
GOPTIONS RESET = SYMBOL; 