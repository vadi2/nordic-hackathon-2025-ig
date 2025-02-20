# Nordic Hackathon 2025

This repository contains the FHIR Implementation Guide (IG) developed during the Nordic Hackathon for Coordinated Health and Social Care. 

## Overview

The IG provides FHIR profiles and resources to enhance data interoperability between health and social care systems, focusing on improving care for patients with multiple diseases.

## Contents

- **Profiles**: Customized FHIR profiles for patient data, care plans, and service delivery. The profiles are 'shallow' and do not go into the full details for the purposes of this Hackathon.
- **Examples**: Sample FHIR resources demonstrating the profiles in use ([page](https://build.fhir.org/ig/vadi2/nordic-hackathon-2025-ig/branches/main/artifacts.html), [zip](https://build.fhir.org/ig/vadi2/nordic-hackathon-2025-ig/branches/main/examples.json.zip))

## Actors
The following systems are part of the FHIR group:

* Medrave
* Webdoc
* Inera
* Evondos

## Data flow
Webdoc can produce this data: planned visits (scheduled appointments), observations (hypertension, diabetes, all deceases arne has, blood pressure, hba1c, lipids, BMI), and medications Arne takes. 

Evondos can produce this data: medicationdispense's to report that medication has been taken or missed.

Medrave and Inera can consume the above data and visualise it to different actors - Medrave to the healthcare providers and Inera to secondary actors such as relatives, etc.

## Usage

Implementers can use this IG to standardize data exchange in health and social care settings, facilitating coordinated and efficient patient care.

## Contact

For questions or contributions, please contact:

- Vadim Peretokin, Carasent Sverige AB
- Monica Winge, Department of Computer and Systems Sciences, Stockholm University
- Paul Johannesson, Department of Computer and Systems Sciences, Stockholm University

---

*Note: This IG was developed as part of the Nordic Hackathon for Coordinated Health and Social Care, organized by Health Data Sweden in collaboration with Stockholm University and Karolinska Institutet.* 
