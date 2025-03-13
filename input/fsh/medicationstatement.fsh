Profile: NordicMedicationStatement
Parent: MedicationStatement
Id: NordicMedicationStatement
Title: "NordicMedicationStatement"
Description: "A medicationstatement profile for the Nordic Hackathon 2025"
* status MS
* medicationCodeableConcept 1..1 MS
* subject 1..1 MS
* effectivePeriod 1..1 MS
* dosage 1..1 MS
  * text 1..1 MS
  * timing 1..1 MS
  * doseAndRate 0..1 MS

Instance: medicationstatement-kol
InstanceOf: NordicMedicationStatement
Usage: #example
* meta.profile = Canonical(NordicMedicationStatement)
* status = #active
* medicationCodeableConcept
  * coding[0]
    * system = "http://www.whocc.no/atc"
    * code = #R03AL08
    * display = "vilanterol, umeclidinium bromide and fluticasone furoate"
  * coding[+]
    * system = "http://electronichealth.se/fhir/NamingSystem/nplpackid"
    * code = #20190917000010
* effectivePeriod
  * start = "2025-03-20"
  * end = "2025-03-26"
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* dosage
  * text = "2 puffs twice daily"
  * timing.repeat
    * frequency = 2
    * period = 1
    * periodUnit = #d

Instance: medicationstatement-diabetes
InstanceOf: NordicMedicationStatement
Usage: #example
* meta.profile = Canonical(NordicMedicationStatement)
* status = #active
* effectivePeriod
  * start = "2025-12-09"
  * end = "2025-12-15"
* medicationCodeableConcept
  * coding[+]
    * system = "http://www.whocc.no/atc"
    * code = #A10BA02
    * display = "Metformin"
  * coding[+]
    * system = "http://electronichealth.se/fhir/NamingSystem/nplpackid"
    * code = #20200601000056
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* dosage
  * text = "500 mg twice daily"
  * timing.repeat
    * frequency = 2
    * period = 1
    * periodUnit = #d
  * doseAndRate.doseQuantity = 500 'mg' "mg"

Instance: medicationstatement-cholesterol
InstanceOf: NordicMedicationStatement
Usage: #example
* meta.profile = Canonical(NordicMedicationStatement)
* status = #active
* effectivePeriod
  * start = "2022-10-11"
  * end = "2022-10-17"
* medicationCodeableConcept
  * coding
    * system = "http://www.whocc.no/atc"
    * code = #C10AA01
    * display = "Simvastatin"
  * coding[+]
    * system = "http://electronichealth.se/fhir/NamingSystem/nplpackid"
    * code = #20080219000026
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* dosage
  * text = "20 mg once daily at bedtime"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * doseAndRate.doseQuantity = 20 'mg' "mg"

Instance: medicationstatement-glimepirid-diabetes
InstanceOf: NordicMedicationStatement
Usage: #example
* meta.profile = Canonical(NordicMedicationStatement)
* status = #active
* effectivePeriod
  * start = "2022-04-20"
  * end = "2022-07-26"
* medicationCodeableConcept
  * coding[+]
    * system = "http://www.whocc.no/atc"
    * code = #A10BB12
    * display = "glimepiride"
  * coding[+]
    * system = "http://electronichealth.se/fhir/NamingSystem/nplpackid"
    * code = #20050701000261
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* dosage
  * text = "2 mg once daily with breakfast"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * doseAndRate.doseQuantity = 2 'mg' "mg"

Instance: medicationstatement-enalapril-hypertension
InstanceOf: NordicMedicationStatement
Usage: #example
* meta.profile = Canonical(NordicMedicationStatement)
* status = #active
* effectivePeriod
  * start = "2025-03-21"
  * end = "2025-03-30"
* medicationCodeableConcept
  * coding[+]
    * system = "http://www.whocc.no/atc"
    * code = #C09BA02
    * display = "enalapril and diuretics"
  * coding[+]
    * system = "http://electronichealth.se/fhir/NamingSystem/nplpackid"
    * code = #20201110100183
* subject = Reference(Patient/arne-67890) "Arne Johansson"
* dosage
  * text = "10 mg once daily"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * doseAndRate.doseQuantity = 10 'mg' "mg"
