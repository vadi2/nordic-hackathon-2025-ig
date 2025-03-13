Alias: $v2-0360 = http://terminology.hl7.org/CodeSystem/v2-0360
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $location-physical-type = http://terminology.hl7.org/CodeSystem/location-physical-type

Instance: karin-67891
InstanceOf: Practitioner
Description: "General practitioner"
Usage: #example
* active = true
* name.family = "Lindström"
* name.given = "Karin"
* name.prefix = "Dr."
* name.text = "Dr. Karin Lindström"
* telecom[0].system = #phone
* telecom[=].value = "+46701234567"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "karin.lindstrom@example.org"
* telecom[=].use = #work
* gender = #female
* qualification.code = $v2-0360#MD "Doctor of Medicine"
* qualification.code.text = "Medical Doctor"

Instance: maria-54321
InstanceOf: Practitioner
Description: "Cardiologist"
Usage: #example
* active = true
* name.family = "Sundström"
* name.given = "Maria"
* name.prefix = "Dr."
* name.text = "Dr. Maria Sundström"
* telecom[0].system = #phone
* telecom[=].value = "+46709876543"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "maria.sundstrom@example.org"
* telecom[=].use = #work
* gender = #female
* qualification.code = $v2-0360#MD "Doctor of Medicine"
* qualification.code.text = "Medical Doctor"

Instance: ingrid-55555
InstanceOf: Practitioner
Description: "Nurse"
Usage: #example
* active = true
* name.family = "Karlsson"
* name.given = "Ingrid"
* name.prefix = "Nurse"
* name.text = "Nurse Ingrid Karlsson"
* telecom[0].system = #phone
* telecom[=].value = "+46705215555"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "ingrid.karlsson@example.org"
* telecom[=].use = #work
* gender = #female
* qualification.code = $v2-0360#RN "Registered Nurse"
* qualification.code.text = "Registered Nurse"

Instance: lisa-45678
InstanceOf: Practitioner
Description: "Nurse"
Usage: #example
* active = true
* name.family = "Andersson"
* name.given = "Lisa"
* name.prefix = "Nurse"
* name.text = "Nurse Lisa Andersson"
* telecom[0].system = #phone
* telecom[=].value = "+4670lisa-4567840"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "lisa.andersson@example.org"
* telecom[=].use = #work
* gender = #female
* qualification.code = $v2-0360#RN "Registered Nurse"
* qualification.code.text = "Registered Nurse"

Instance: arne-67890
InstanceOf: Patient
Description: "Arne - Hackathon patient"
Usage: #example
* active = true
* name.family = "Johansson"
* name.given = "Arne"
* name.text = "Arne Johansson"
* telecom[0].system = #phone
* telecom[=].value = "+46701112233"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "arne.johansson@example.org"
* telecom[=].use = #home
* gender = #male
* birthDate = "1965-03-15"
* address.use = #home
* address.type = #physical
* address.line = "Storgatan 42"
* address.city = "Stockholm"
* address.postalCode = "11324"
* address.country = "SE"
* communication.language = urn:ietf:bcp:47#sv "Swedish"
* communication.language.text = "Swedish"
* communication.preferred = true
* generalPractitioner = Reference(Practitioner/maria-54321) "Dr. Maria Sundström"

Instance: Stockholm-Clinic
InstanceOf: Location
Description: "Main health clinic in Stockholm"
Usage: #example
* identifier.system = "http://example.org/nordic-healthcare/locations"
* identifier.value = "STHLM-CLINIC-001"
* status = #active
* name = "Stockholm Health Clinic"
* description = "Main health clinic in Stockholm"
* mode = #instance
* type = $v3-RoleCode#HOSP "Hospital"
* type.text = "Hospital"
* telecom[0].system = #phone
* telecom[=].value = "+4684567190"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@stockholmclinic.example.org"
* telecom[=].use = #work
* address.use = #work
* address.type = #physical
* address.line = "Kungsgatan 33"
* address.city = "Stockholm"
* address.postalCode = "11156"
* address.country = "SE"
* physicalType = $location-physical-type#bu "Building"
* physicalType.text = "Building"

Instance: Uppsala-Cardiology-Clinic
InstanceOf: Location
Description: "Specialized cardiology clinic in Uppsala"
Usage: #example
* identifier.system = "http://example.org/nordic-healthcare/locations"
* identifier.value = "UPP-CARDIO-001"
* status = #active
* name = "Uppsala Cardiology Clinic"
* description = "Specialized cardiology clinic in Uppsala"
* mode = #instance
* type = $v3-RoleCode#HOSP "Hospital"
* type.text = "Hospital"
* telecom[0].system = #phone
* telecom[=].value = "+4618123456"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "cardiology@uppsalaclinic.example.org"
* telecom[=].use = #work
* address.use = #work
* address.type = #physical
* address.line = "Sjukhusvägen 15"
* address.city = "Uppsala"
* address.postalCode = "75185"
* address.country = "SE"
* physicalType = $location-physical-type#bu "Building"
* physicalType.text = "Building"

Instance: Home-Visit
InstanceOf: Location
Description: "Location representing home visits to patients"
Usage: #example
* identifier.system = "http://example.org/nordic-healthcare/locations"
* identifier.value = "HOME-VISIT-TYPE"
* status = #active
* name = "Patient's Home"
* description = "Location representing home visits to patients"
* mode = #kind
* type = $v3-RoleCode#PTRES "Patient's Residence"
* type.text = "Patient's Residence"
* physicalType = $location-physical-type#ho "House"
* physicalType.text = "House"
