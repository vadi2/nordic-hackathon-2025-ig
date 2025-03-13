Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $sct = http://snomed.info/sct

Profile: NordicObservation
Parent: Observation
Description: "An observation profile for the Nordic Hackathon 2025"
* status MS
* category MS
* code 1..1 MS
* effectiveDateTime 1..1 MS
* valueQuantity MS
* component MS

Instance: observation-blood-pressure
InstanceOf: NordicObservation
Description: "Blood pressure"
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
  * text = "Blood pressure systolic & diastolic"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* effectiveDateTime = "2012-09-17"
* bodySite = $sct#368209003 "Right arm"
* component[0]
  * code
    * coding[0] = $loinc#8480-6 "Systolic blood pressure"
    * coding[+] = $sct#271649006 "Systolic blood pressure"
  * valueQuantity = 107 'mm[Hg]' "mmHg"
  * interpretation = $v3-ObservationInterpretation#N "normal"
    * text = "Normal"
* component[+]
  * code = $loinc#8462-4 "Diastolic blood pressure"
  * valueQuantity = 60 'mm[Hg]' "mmHg"
  * interpretation = $v3-ObservationInterpretation#L "low"
    * text = "Below low normal"

Instance: observation-hba1c
InstanceOf: NordicObservation
Description: "Hemoglobin A1c"
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 52 'mmol/mol' "mmol/mol"

Instance: observation-lipids
InstanceOf: NordicObservation
Description: "Lipid panel"
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* code = $loinc#2093-3 "Cholesterol, Blood"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 5.2 'mmol/L' "mmol/L"

Instance: observation-bmi
InstanceOf: NordicObservation
Description: "Body mass index"
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 18.2 'kg/m2' "kg/m2"

Instance: observation-height
InstanceOf: NordicObservation
Description: "Body height"
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8302-2 "Body height"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 175 'cm' "cm"

Instance: observation-weight
InstanceOf: NordicObservation
Description: "Body weight"
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 55.74 'kg' "kg"

Instance: observation-cystatin-c
InstanceOf: NordicObservation
Description: "Cystatin C"
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* code = $loinc#33863-2 "Cystatin C [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 1.2 'mg/L' "mg/L"

Instance: observation-kidney-function
InstanceOf: NordicObservation
Description: "Kidney function"
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* code = $loinc#33914-3 "GFR, Blood"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 50 'mL/min' "ml/min"

Instance: observation-triglycerides
InstanceOf: NordicObservation
Description: "Triglycerides"
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* code = $loinc#2571-8 "Triglyceride [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 1.9 'mmol/L' "mmol/L"

Instance: observation-fev1-after-bd
InstanceOf: NordicObservation
Description: "Forced expiratory volume in 1 second"
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* code = $loinc#20150-9 "FEV1"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 83 '%' "%"
