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

### Data flow
Webdoc can produce this data: planned visits (scheduled appointments), observations (hypertension, diabetes, all deceases arne has, blood pressure, hba1c, lipids, BMI), and medications Arne takes. 

Medrave will also produce planned appointments.

Evondos can produce this data: medicationdispense's to report that medication has been taken or missed.

Doctrin can produce appointments and self-reported observations, and also consume planned appointments.

Medrave and Inera can consume the above data and visualise it to different actors - Medrave to the healthcare providers and Inera to secondary actors such as relatives, etc. Medrave would like to use FHIR Subscriptions to be notified of data as it comes in realtime.

Webdoc can also consume the medicationdispense data from Evondos to show that the medication has been taken or missed.

<img src="user-scenario.png" alt="user-scenario" style="width:100%;"/>

### Usage

Implementers can use this IG to standardize data exchange in health and social care settings, facilitating coordinated and efficient patient care.

### Contact

For questions or contributions, please contact:

- Vadim Peretokin, Carasent Sverige AB
- Monica Winge, Department of Computer and Systems Sciences, Stockholm University
- Paul Johannesson, Department of Computer and Systems Sciences, Stockholm University

---

*Note: This IG was developed as part of the Nordic Hackathon for Coordinated Health and Social Care, organized by Health Data Sweden in collaboration with Stockholm University and Karolinska Institutet.* 
