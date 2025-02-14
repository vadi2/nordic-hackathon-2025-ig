Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org

Profile: NordicObservation
Parent: Observation
Description: "An observation profile for the Nordic Hackathon 2025"
* status MS
* category MS
* code 1..1 MS
* effectiveDateTime 1..1 MS
* valueQuantity 1..1 MS

Instance: blood-pressure
InstanceOf: NordicObservation
Usage: #inline
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure"
* subject = Reference(Patient/67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 145 'mm[Hg]' "mmHg"

Instance: hba1c
InstanceOf: NordicObservation
Usage: #inline
* status = #final
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* subject = Reference(Patient/67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 7.5 '%' "%"

Instance: lipids
InstanceOf: NordicObservation
Usage: #inline
* status = #final
* code = $loinc#2093-3 "Cholesterol in Blood"
* subject = Reference(Patient/67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 5.2 'mmol/L' "mmol/L"

Instance: bmi
InstanceOf: NordicObservation
Usage: #inline
* status = #final
* code = $loinc#39156-5 "Body Mass Index"
* subject = Reference(Patient/67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 24.8 'kg/m2' "kg/m2"
