# Global Fear Index for COVID-19 pandemic (COVID-GFI)

## Download the complete daily COVID-19 GFI dataset : [CSV](https://www.dropbox.com/s/6qfi7y4qzctooxr/gfi-data.csv?dl=0) | [XLSX](https://www.dropbox.com/scl/fi/8mt09g8qoecnlm908iqmr/gfi-data.xlsx?dl=0&rlkey=jy7f9er6xkjltx2ketdqjg7gx) | [Stata](https://www.dropbox.com/s/zrnli9t51l7gbxp/gfi-data.dta?dl=0)

## Introduction

The COVID-19 Global Fear Index (GFI) was developed by [Afees Salisu & Lateef Akanni (2020)](https://www.tandfonline.com/doi/full/10.1080/1540496X.2020.1785424). The index seeks to measure the daily concerns and emotions on the spread and severity of COVID-19 since its first declaration as a public health emergency of international concern on 30 January 2020, and subsequent formal declaration as a pandemic on 11 March 2020 by the World Health Organisation (WHO). Excessive fears could have significant implications on investment sentiments and decisions, and as such affecting prices such as stocks and oil prices. 
The GFI is a composite index of two factors; Reported Cases and Reported Deaths, on a scale of 0 to 100, 
respectively indicating no fear to extreme fear/panic. An index value of 50 is considered 
neutral, while anything higher signals more fear than usual. 

To construct the index, we include the incubation period expectation of daily reported cases and reported COVID deaths. The incubation period expectation is defined as the time expectation between when a person could be exposed to the Coronavirus and emergence of symptoms of the disease.  Following the WHO estimate of the  COVID-19 incubation period range from 1-14 days (WHO, 2020), we considered the maximum range of 14 days in the computation.

The GFI has two parts: the Reported Cases Index (RCI) and the Reported Deaths Index (RDI). The RCI measures how peoples’ expectations on reported COVID-19 cases in the preceding 14-days period veered from the present day’s reported case. It is computed as the ratio of the sum of daily reported cases across countries and the sum of reported cases in period _t_ and at the start of the incubation period (_t-14_). The ratio is then multiplied by 100 to give the index on a scale between 0 and 100. 

$$RCI_{t} = \left( \sum_{i=1}^{N} C_{i,t} / \sum_{i=1}^{N} \left( C_{i,t} + C_{i,t-14} \right) \right)$$


$$RCI_{t} = \left( \frac{\sum_{i=1}^{N}{C_{i,t}}}{\sum_{i=1}^{N}{(C_{i,t} + C_{i,t-14})}} \right) \times 100 $$

where $C_{i,t}$ is the daily reported COVID infections cases for country _i_ in period _t_. In a similar vein, the RDI measures how peoples’ expectations from reported deaths in the preceding 14-days period veered from the current day’s reported deaths. It is computed as:

$$RDI_{t} = \left( \sum_{i=1}^{N} D_{i,t} / \sum_{i=1}^{N} \left( D_{i,t} + D_{i,t-14} \right) \right)$$


$$RDI_{t} = \left( \frac{\sum_{i=1}^{N}{D_{i,t}}}{\sum_{i=1}^{N}{(D_{i,t} + D_{i,t-14})}} \right) \times 100 $$


Finally, the construct of the GFI pulls the two indexes together with equal weights assigned to obtain the composite index. The composite index is given as the simple average of RCI 
and RDI defined above. The higher the value of GFI, the higher the global fear of the COVID-19 pandemic.

$$ GFI_{t} = \left[ 0.5 \left( RCI_{t} + RCI_{t} \right) \right]  $$


## References
