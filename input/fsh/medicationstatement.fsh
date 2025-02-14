Profile: NordicMedicationStatement
Parent: MedicationStatement
Id: NordicMedicationStatement
Title: "NordicMedicationStatement"
Description: "A medicationstatement profile for the Nordic Hackathon 2025"
* status MS
* medication 1..1 MS
* subject 1..1 MS
* effectiveDateTime 1..1 MS
* dosage 1..1 MS
  * text 1..1 MS
  * timing 1..1 MS
  * doseAndRate 1..1 MS

Instance: medicationstatement-kol
InstanceOf: NordicMedicationStatement
Usage: #example
* meta.profile = Canonical(NordicMedicationStatement)
* status = #active
* medication.concept.coding
  * system = "http://www.whocc.no/atc"
  * code = #R03AL08
  * display = "Trimbow inhalation spray"
* effectiveDateTime = "2025-03-20"
* subject = Reference(Patient/67890) "Arne Johansson"
* dosage
  * text = "2 puffs twice daily"
  * timing.repeat
    * frequency = 2
    * period = 1
    * periodUnit = #d
  * doseAndRate.doseQuantity = 2 'puff' "puffs"

Instance: medicationstatement-blood-pressure
InstanceOf: NordicMedicationStatement
Usage: #example
* meta.profile = Canonical(NordicMedicationStatement)
* status = #recorded
* effectiveDateTime = "2025-03-20"
* medication.concept.coding
  * system = "http://www.whocc.no/atc"
  * code = #C09AA02
  * display = "Enalapril"
* subject = Reference(Patient/67890) "Arne Johansson"
* dosage
  * text = "10 mg once daily"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * doseAndRate.doseQuantity = 10 'mg' "mg"

Instance: medicationstatement-diabetes
InstanceOf: NordicMedicationStatement
Usage: #example
* meta.profile = Canonical(NordicMedicationStatement)
* status = #recorded
* effectiveDateTime = "2025-12-09"
* medication.concept.coding
  * system = "http://www.whocc.no/atc"
  * code = #A10BA02
  * display = "Metformin"
* subject = Reference(Patient/67890) "Arne Johansson"
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
* status = #recorded
* effectiveDateTime = "2022-10-11"
* medication.concept.coding
  * system = "http://www.whocc.no/atc"
  * code = #C10AA01
  * display = "Simvastatin"
* subject = Reference(Patient/67890) "Arne Johansson"
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
* effectiveDateTime = "2022-04-20"
* medication.concept.coding
  * system = "http://www.whocc.no/atc"
  * code = #A10BB12
  * display = "Glimepirid"
* subject = Reference(Patient/67890) "Arne Johansson"
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
* effectiveDateTime = "2025-03-21"
* medication.concept.coding
  * system = "http://www.whocc.no/atc"
  * code = #C09BA02
  * display = "Enalapril"
* subject = Reference(Patient/67890) "Arne Johansson"
* dosage
  * text = "10 mg once daily"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * doseAndRate.doseQuantity = 10 'mg' "mg"
