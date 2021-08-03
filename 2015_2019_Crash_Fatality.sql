

ALTER TABLE CrashData1519
ALTER COLUMN CRSHTYPEO nvarchar(255)

Alter TABLE CrashData1519 
ALTER COLUMN HWY_CLSS_C nvarchar(255)

Alter TABLE CrashData1519
ALTER COLUMN SPEEDLIMIT nvarchar(255)

Alter TABLE CrashData1519 
ALTER COLUMN LIGHTING nvarchar(255)

Alter TABLE CrashData1519 
ALTER COLUMN WEATHER nvarchar(255)

Alter TABLE CrashData1519
ALTER COLUMN HWY_CLSS_C nvarchar(255)

UPDATE CrashData1519
SET CRSHTYPEO = CASE
WHEN(CRSHTYPEO = 2) THEN 'Head On'
WHEN(CRSHTYPEO = 10) THEN 'Backing'
WHEN(CRSHTYPEO = 3) THEN 'Head On-Left Turn'
WHEN(CRSHTYPEO = 98) THEN 'Unknown'
WHEN(CRSHTYPEO = 27) THEN 'Rear End-Right Turn '
WHEN(CRSHTYPEO = 8) THEN 'Sideswipe-Same'
WHEN(CRSHTYPEO = 97) THEN 'Other'
WHEN(CRSHTYPEO = 4) THEN 'Angle'
WHEN(CRSHTYPEO = 9) THEN 'Sideswipe-Opposite'
WHEN(CRSHTYPEO = 1) THEN 'Single Motor Vehicle'
WHEN(CRSHTYPEO = 6) THEN 'Rear End-Left Turn'
WHEN(CRSHTYPEO = 5) THEN 'Rear End'
ELSE 'Not Entered'
END,
HWY_CLSS_C = CASE
WHEN (HWY_CLSS_C = 8) THEN 'Service Drive'
WHEN (HWY_CLSS_C = 3) THEN 'M Route'
WHEN (HWY_CLSS_C = 6) THEN 'M Business Route'
WHEN (HWY_CLSS_C = 7) THEN 'Connector'
WHEN (HWY_CLSS_C = 1) THEN 'Interstate'
WHEN (HWY_CLSS_C = 5) THEN 'US Business Route'
WHEN (HWY_CLSS_C = 2) THEN 'US Route' 
WHEN (HWY_CLSS_C = 9) THEN 'Road' 
WHEN (HWY_CLSS_C = 4) THEN 'Interstate Business Loop'
ELSE 'Other'
END, SPEEDLIMIT = 
CASE
WHEN (SPEEDLIMIT >= 0 and SPEEDLIMIT <= 20) THEN '0-20'
WHEN (SPEEDLIMIT >= 25 and SPEEDLIMIT <= 45) THEN '25-45'
WHEN (SPEEDLIMIT >= 50) THEN '50+'
END, 
LIGHTING = CASE
WHEN Lighting = 1 Then 'Daylight'
WHEN Lighting = 3 Then 'Dusk'
WHEN Lighting = 2 Then 'Dawn'
WHEN Lighting = 4 Then 'Dark-lighted'
WHEN Lighting = 5 Then 'Dark-Unlighted'
ELSE 'not entered' END, 
WEATHER = CASE
WHEN (Weather = 10) THEN 'Smoke'
WHEN (Weather = 1) THEN 'Clear'
WHEN (Weather = 2) THEN 'Cloudy'
WHEN (Weather = 3) THEN 'Fog'
WHEN (Weather = 8) THEN 'Blowing Snow'
WHEN (Weather = 7) THEN 'Sleet or Hail'
WHEN (Weather = 98) THEN 'Unknown'
WHEN (Weather = 9) THEN 'Blowing Sand, Soil, Dirt'
WHEN (Weather = 4) THEN 'Rain'
WHEN (Weather = 6) THEN 'Severe Crosswinds'
WHEN (Weather = 5) THEN 'Snow'
ELSE 'not entered' END

SELECT *
FROM CrashData1519
WHERE KCOUNT > 0