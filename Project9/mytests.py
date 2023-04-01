from dataqualitychecks import check_for_nulls
from dataqualitychecks import check_for_min_max
from dataqualitychecks import check_for_valid_values
from dataqualitychecks import check_for_duplicates


test1={
	"testname":"Check for nulls",
	"test":check_for_nulls,
	"column": "monthid",
	"table": "DimMonth"
}


test2={
	"testname":"Check for min and max",
	"test":check_for_min_max,
	"column": "month",
	"table": "DimMonth",
	"minimum":1,
	"maximum":4
}


test3={
	"testname":"Check for valid values",
	"test":check_for_valid_values,
	"column": "category",
	"table": "DimCustomer",
	"valid_values":{'Q1','Q2','Q3','Q4'}
}


test4={
	"testname":"Check for duplicates",
	"test":check_for_duplicates,
	"column": "monthid",
	"table": "DimMonth"
}

test5={
    "testname":"Check for nulls",
    "test":check_for_nulls,
    "column": "year",
    "table": "DimMonth"
}