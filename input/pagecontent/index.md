# Nordic Hackathon 2025

This IG contains the [FHIR Implementation Guide (IG)](https://build.fhir.org/ig/vadi2/nordic-hackathon-2025-ig/branches/main/index.html) developed during the Nordic Hackathon for Coordinated Health and Social Care. 

### Overview

The IG provides FHIR profiles and resources to enhance data interoperability between health and social care systems, focusing on improving care for patients with multiple diseases.

### Contents

- **Profiles**: Customized FHIR profiles for patient data, care plans, and service delivery. The profiles are 'shallow' and do not go into the full details for the purposes of this Hackathon.
- **Examples**: Sample FHIR resources demonstrating the profiles in use ([page](https://build.fhir.org/ig/vadi2/nordic-hackathon-2025-ig/branches/main/artifacts.html), [zip](https://build.fhir.org/ig/vadi2/nordic-hackathon-2025-ig/branches/main/examples.json.zip))

### Actors
The following systems are part of the FHIR group:

* Medrave
* Webdoc
* Inera
* Evondos
* Doctrin
* Alma Health

### Data flow
[Webdoc](https://www.webdoc.com/), used by the healthcare practitioner, produces planned visits (scheduled [Appointments](http://hl7.org/fhir/r4/appointment.html)) that has been scheduled from the journal along with the related Patient and Practitioners that are involved. 

Webdoc consumes self-reported blood pressure [Observations](http://hl7.org/fhir/R4/observation.html) as created by Doctrin (see below) to integrate this into the journal.

[Medrave](https://www.medrave.com/), used by the healthcare practitioner, produces Appointment requests (regular check-up, annual physical, etc.) that need to be scheduled, and also can create [Task](http://hl7.org/fhir/r4/task.html) resources requesting that the patient do a certain action (such as take a blood pressure reading). Both of these resources are picked up by Doctrin in order to be actioned.

Medrave consumes and visualises for the healthcare providers the following data, in real-time using FHIR [Subscriptions](http://hl7.org/fhir/R4B/subscription.html): 
* upcoming [Appointments](http://hl7.org/fhir/R4/appointment.html) (created by Webdoc, Doctrin, Evondos)
* [Conditions](http://hl7.org/fhir/R4/condition.html) (copd, coronary-heart-disease, diabetes, hypertension, leg-ulcers and other-emphysema), 
* [Observations](http://hl7.org/fhir/R4/observation.html) (blood-pressure created by Doctrin, bmi, cystatin-c, fev1-after-bd, hba1c, height, kidney-function, lipids, triglycerides and weight), and 
* [MedicationStatements](http://hl7.org/fhir/R4/medicationstatement.html) (cholesterol, diabetes, enalapril-hypertension, glimepirid-diabetes and kol)

[Evondos](https://www.evondos.com/) has a medicine dispensing robot which produces [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html) resources to report that medication has been taken or missed, as well as Appointment requests in case the patient has been missing too many doses and should be seen by a practitioner.

[Doctrin](https://doctrin.com/), used by the healthcare practitioner, produces [Encounters](http://hl7.org/fhir/R4/encounter.html), updates to [Patient](http://hl7.org/fhir/R4/patient.html)'s administrative information, and Observations reporting the patient's self-reported blood pressure.

Doctrin consumes and visualises for the healthcare providers Tasks from Webdoc to reach out to the patient as well as Appointment requests from Medrave to schedule the patient.

[Alma Health](https://www.almahealth.se/), used by the healthcare practitioner, consumes blood pressure Observations from Doctrin to automate patient contact via Doctrin.  

[Inera](https://www.inera.se/), used by the patient and secondary actors such as their relatives, can consume all of above data (Appointments, Observations, MedicationDispenses, and Conditions) to visualise it all in a single place and tie it all together.

All of this has been accomplished in a couple of preparatory meetings and a 2-day hackathon with 6 companies.

<object data="workflow.svg" type="image/svg+xml"></object>
<br/>

### Usage

Implementers can use this IG to standardize data exchange in health and social care settings, facilitating coordinated and efficient patient care.

### Contact

For questions or contributions, please contact:

- Vadim Peretokin, Carasent Sverige AB
- Monica Winge, Department of Computer and Systems Sciences, Stockholm University
- Paul Johannesson, Department of Computer and Systems Sciences, Stockholm University

---

*Note: This IG was developed as part of the [Nordic Hackathon for Coordinated Health and Social Care](https://nordichackathon.blogs.dsv.su.), organized by Health Data Sweden in collaboration with Stockholm University and Karolinska Institutet.* 
