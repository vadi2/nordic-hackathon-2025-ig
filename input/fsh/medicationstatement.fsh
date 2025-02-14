Profile: NordicMedicationStatement
Parent: MedicationStatement
Id: NordicMedicationStatement
Title: "NordicMedicationStatement"
Description: "A medicationstatement profile for the Nordic Hackathon 2025"
* status MS
* medication 1..1 MS
* subject 1..1 MS
* dosage 1..1 MS
  * text 1..1 MS
  * timing 1..1 MS
  * doseAndRate 1..1 MS

Instance: blood-pressure-med
InstanceOf: NordicMedicationStatement
Usage: #inline
* meta.profile = Canonical(NordicMedicationStatement)
* status = #active
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

Instance: diabetes-med
InstanceOf: NordicMedicationStatement
Usage: #inline
* meta.profile = Canonical(NordicMedicationStatement)
* status = #active
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

Instance: cholesterol-med
InstanceOf: NordicMedicationStatement
Usage: #inline
* meta.profile = Canonical(NordicMedicationStatement)
* status = #active
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
