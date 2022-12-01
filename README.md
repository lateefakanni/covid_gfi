# Global Fear Index for COVID-19 pandemic (COVID-GFI)
Global Fear Index for COVID-19 pandemic

The COVID-19 Global Fear Index (GFI) was developed by Afees Salisu & Lateef Akanni (2020) . The index seeks to measure the daily concerns and emotions on the spread and severity of COVID-19 since its first declaration as a public health emergency of international concern on 30 January 2020, and subsequent formal declaration as a pandemic on 11 March 2020 by the World Health Organisation (WHO). Excessive fears could have significant implications on investment sentiments and decisions, and as such affecting prices such as stocks and oil prices. 
The GFI is a composite index of two factors; Reported Cases and Reported Deaths, on a scale of 0 to 100, 
respectively indicating no fear to extreme fear/panic. An index value of 50 is considered 
neutral, while anything higher signals more fear than usual. 

To construct the index, we include the incubation period expectation of daily reported cases and reported COVID deaths. The incubation period expectation is defined as the time expectation between when a person could be exposed to the Coronavirus and emergence of symptoms of the disease.  Following the WHO estimate of the  COVID-19 incubation period range from 1-14 days (WHO, 2020), we considered the maximum range of 14 days in the computation.

The GFI has two parts: the Reported Cases Index (RCI) and the Reported Deaths Index (RDI). The RCI measures how peoples’ expectations on reported COVID-19 cases in the preceding 14-days period veered from the present day’s reported case. It is computed as the ratio of the sum of reported cases globally on the day under consideration and the sum of reported cases for the current day and reported cases at the start of the incubation period. The ratio is then multiplied by 100 to give the index on a scale between 0 and 100. 

$$\ \left( \sum_{i=1}^N C_{i,t}^2 \right)  $$

$$RCI_{t} = \frac{\sum_{i=1}^N C_{i,t}}{\sum_{i=1}^N \left(C_{i,t}+C_{i,t-14}\right)}$$

The first component of the COVID-19 Global Fear Index (
    
The second component is the Reported Deaths Index (RDI) and measures how far peoples’ 
expectations from reported deaths in the preceding 14-days period veered from the present 
day’s reported deaths. The RDI, just as the RCI, is computed as the ratio of COVID-19 
related reported deaths across the world and the sum of reported deaths on the day under 
consideration day and the start of its incubation period (14 days ago). The ratio is also 
multiplied by 100 to give an index between 0 and 100. 

We collect the official data on  COVID-19 cases and associated deaths for every country from the , 



Finally, the construct of the GFI pulls the two indexes together with equal weights assigned 
to obtain the composite index. The composite index is given as the simple average of RCI 
and RDI defined above. The higher the value of GFI, the higher the global fear of the 
COVID-19 pandemic.1