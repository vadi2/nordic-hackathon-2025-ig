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

Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $sct = http://snomed.info/sct
Alias: $clinical-codes = http://acme.org/devices/clinical-codes

Instance: blood-pressure
InstanceOf: Observationvitalsigns
Usage: #example
* meta.profile = Canonical(NordicObservation)
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
  * text = "Blood pressure systolic & diastolic"
* subject = Reference(Patient/example)
* effectiveDateTime = "2012-09-17"
* bodySite = $sct#368209003 "Right arm"
* component[0]
  * code
    * coding[0] = $loinc#8480-6 "Systolic blood pressure"
    * coding[+] = $sct#271649006 "Systolic blood pressure"
    * coding[+] = $clinical-codes#bp-s "Systolic Blood pressure"
  * valueQuantity = 107 'mm[Hg]' "mmHg"
  * interpretation = $v3-ObservationInterpretation#N "normal"
    * text = "Normal"
* component[+]
  * code = $loinc#8462-4 "Diastolic blood pressure"
  * valueQuantity = 60 'mm[Hg]' "mmHg"
  * interpretation = $v3-ObservationInterpretation#L "low"
    * text = "Below low normal"

Instance: hba1c
InstanceOf: NordicObservation
* meta.profile = Canonical(NordicObservation)
* status = #final
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* subject = Reference(Patient/67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 7.5 '%' "%"

Instance: lipids
InstanceOf: NordicObservation
* meta.profile = Canonical(NordicObservation)
* status = #final
* code = $loinc#2093-3 "Cholesterol in Blood"
* subject = Reference(Patient/67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 5.2 'mmol/L' "mmol/L"

Instance: bmi
InstanceOf: NordicObservation
* meta.profile = Canonical(NordicObservation)
* status = #final
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/67890) "Arne Johansson"
* effectiveDateTime = "2025-03-20T10:30:00+01:00"
* valueQuantity = 24.8 'kg/m2' "kg/m2"
