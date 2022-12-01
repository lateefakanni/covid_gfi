clear

cap cd "C:/Users/qrb20183/OneDrive - University of Strathclyde/personal/GitHub local/covid_gfi_data"

*ssc install sencode // uncomment to install "sencode" if not already installed on Stata

//Import COVID data from Our World in Data
import delimited "https://covid.ourworldindata.org/data/owid-covid-data.csv", clear

save ./data/raw-covid-data.dta, replace 

sencode continent, replace
drop if continent==.

generate double period = date(date,"20YMD")
format period %td

sencode location, replace

keep location continent period new_cases new_deaths total_cases total_deaths

rename period date
rename location country

sort date country

collapse (sum) new_cases new_deaths total_cases total_deaths, by(date)

tsset date

// COVID index
gen RCI = (new_cases/(new_cases+L14.new_cases))*100 // Reported Cases Index

gen RDI = (new_deaths/(new_deaths+L14.new_deaths))*100 // Reported Deaths Index

drop if RDI==100 | RDI==. // Drop outliers and missing obervations

gen GFI = (RCI+RDI)/2 // Global Fear Index

save ./data/gfi-data.dta, replace