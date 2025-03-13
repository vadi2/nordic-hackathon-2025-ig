Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $icd-10 = http://hl7.org/fhir/sid/icd-10

Profile: NordicCondition
Parent: Condition
Id: NordicCondition
Title: "NordicCondition"
Description: "A condition profile for the Nordic Hackathon 2025"
* clinicalStatus 1..1 MS
* code 1..1 MS
* subject 1..1 MS

Instance: condition-diabetes
InstanceOf: NordicCondition
Description: "Type 2 diabetes mellitus"
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#E11.7 "Type 2 diabetes mellitus : With multiple complications"
* subject = Reference(Patient/arne-67890) "Arne Johansson"

Instance: condition-hypertension
InstanceOf: NordicCondition
Description: "Hypertension"
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#I11 "Hypertensive heart disease"
* subject = Reference(Patient/arne-67890) "Arne Johansson"

Instance: condition-copd
InstanceOf: NordicCondition
Description: "Chronic obstructive pulmonary disease"
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#J44.9 "Chronic obstructive pulmonary disease, unspecified"
* subject = Reference(Patient/arne-67890) "Arne Johansson"

Instance: condition-coronary-heart-disease
InstanceOf: NordicCondition
Description: "Coronary heart disease"
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#I25.2 "Old myocardial infarction"
* subject = Reference(Patient/arne-67890) "Arne Johansson"

Instance: condition-leg-ulcers
InstanceOf: NordicCondition
Description: "Leg ulcers"
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#L98.4 "Chronic ulcer of skin, not elsewhere classified"
* subject = Reference(Patient/arne-67890) "Arne Johansson"

Instance: condition-other-emphysema
InstanceOf: NordicCondition
Description: "Other emphysema"
Usage: #example
* clinicalStatus = $condition-clinical#active "Active"
* code = $icd-10#J43.8 "Other emphysema"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
