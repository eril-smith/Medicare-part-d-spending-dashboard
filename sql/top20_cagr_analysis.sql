-- File: top20_cagr_analysis.sql
-- Description: Selects top 20 drugs by CAGR in average spending per dosage unit
-- Notes: Filters out outliers and includes only "Overall" manufacturer aggregates

SELECT brnd_name 
	,gnrc_name
	,mftr_name 
	,Tot_Mftr
	,Tot_Clms_2018
	,Tot_Benes_2018
	,Tot_Spndng_2018
	,Tot_Clms_2019
	,Tot_Benes_2019
	,Tot_Spndng_2019
	,Tot_Clms_2020
	,Tot_Benes_2020
	,Tot_Spndng_2020
	,Tot_Clms_2021
	,Tot_Benes_2021
	,Tot_Spndng_2021
	,Tot_Clms_2022
	,Tot_Benes_2022
	,Tot_Spndng_2022
	,avg_spnd_per_dsg_unt_wghtd_2018
	,avg_spnd_per_dsg_unt_wghtd_2019
	,avg_spnd_per_dsg_unt_wghtd_2020
	,avg_spnd_per_dsg_unt_wghtd_2021
	,avg_spnd_per_dsg_unt_wghtd_2022
	,cagr_avg_spnd_per_dsg_unt_18_22
FROM medcost.part_d_spending
WHERE avg_spnd_per_dsg_unt_wghtd_2018 IS NOT NULL 
	AND Avg_Spnd_Per_Dsg_Unt_Wghtd_2022 IS NOT NULL
	AND Outlier_Flag_2018 = FALSE
	AND Outlier_Flag_2019 = FALSE
	AND Outlier_Flag_2020 = FALSE
	AND Outlier_Flag_2021 = FALSE
	AND Outlier_Flag_2022 = FALSE
	AND mftr_name = 'Overall'
	AND part_d_spending IS NOT NULL
ORDER BY cagr_avg_spnd_per_dsg_unt_18_22 desc
LIMIT 20
;

