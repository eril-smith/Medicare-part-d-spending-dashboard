-- File: create_part_d_table.sql
-- Description: Table schema for loading Medicare Part D drug spending data
-- Notes: Includes annual totals and calculated CAGR from 2018 to 2022

CREATE TABLE medcost.part_d_spending (
	Brnd_Name varchar(100)
	,Gnrc_Name varchar(100)
	,Tot_Mftr int
	,Mftr_Name varchar(100)
	,Tot_Spndng_2018 float
	,Tot_Dsg_Unts_2018 float
	,Tot_Clms_2018 float
	,Tot_Benes_2018 int
	,Avg_Spnd_Per_Dsg_Unt_Wghtd_2018 float
	,Avg_Spnd_Per_Clm_2018 float
	,Avg_Spnd_Per_Bene_2018 float
	,Outlier_Flag_2018 boolean
	,Tot_Spndng_2019 float
	,Tot_Dsg_Unts_2019 float
	,Tot_Clms_2019 float
	,Tot_Benes_2019 int
	,Avg_Spnd_Per_Dsg_Unt_Wghtd_2019 float
	,Avg_Spnd_Per_Clm_2019 float
	,Avg_Spnd_Per_Bene_2019 float
	,Outlier_Flag_2019 boolean
	,Tot_Spndng_2020 float
	,Tot_Dsg_Unts_2020 float
	,Tot_Clms_2020 float
	,Tot_Benes_2020 int
	,Avg_Spnd_Per_Dsg_Unt_Wghtd_2020 float
	,Avg_Spnd_Per_Clm_2020 float
	,Avg_Spnd_Per_Bene_2020 float
	,Outlier_Flag_2020 boolean
	,Tot_Spndng_2021 float
	,Tot_Dsg_Unts_2021 float
	,Tot_Clms_2021 float
	,Tot_Benes_2021 int
	,Avg_Spnd_Per_Dsg_Unt_Wghtd_2021 float
	,Avg_Spnd_Per_Clm_2021 float
	,Avg_Spnd_Per_Bene_2021 float
	,Outlier_Flag_2021 boolean
	,Tot_Spndng_2022 float
	,Tot_Dsg_Unts_2022 float
	,Tot_Clms_2022 float
	,Tot_Benes_2022 int
	,Avg_Spnd_Per_Dsg_Unt_Wghtd_2022 float
	,Avg_Spnd_Per_Clm_2022 float
	,Avg_Spnd_Per_Bene_2022 float
	,Outlier_Flag_2022 boolean
	,Chg_Avg_Spnd_Per_Dsg_Unt_21_22 float
	,CAGR_Avg_Spnd_Per_Dsg_Unt_18_22 float
)
;
