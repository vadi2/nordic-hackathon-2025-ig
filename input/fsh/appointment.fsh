Alias: $service-category = http://terminology.hl7.org/CodeSystem/service-category

Profile: NordicAppointment
Parent: Appointment
Description: "An appointment profile for the Nordic Hackathon 2025"
* created 1..1 MS
* subject 0..1 MS
* start 1..1 MS
* end 1..1 MS
* serviceCategory 0..1 MS
* participant 1..* MS

Instance: appointment-example
InstanceOf: NordicAppointment
Usage: #example
* meta.profile = Canonical(NordicAppointment)
* created = "2025-02-14T08:30:00Z"
* status = #booked
* subject = Reference(Patient/12345) "Anders Svensson"
* start = "2025-03-01T09:00:00+01:00"
* end = "2025-03-01T09:30:00+01:00"
* serviceCategory = $service-category#17 "General Practice"
* participant[0]
  * actor = Reference(Practitioner/67890) "Dr. Karin Lindström"
  * status = #accepted
* participant[+]
  * actor = Reference(Patient/12345) "Anders Svensson"
  * status = #accepted
* participant[+]
  * actor = Reference(Location/Stockholm-Clinic) "Stockholm Health Clinic"
  * status = #accepted

Instance: appointment-example-2
InstanceOf: NordicAppointment
Usage: #example
* meta.profile = Canonical(NordicAppointment)
* created = "2025-02-14T11:00:00Z"
* status = #booked
* subject = Reference(Patient/67890) "Arne Johansson"
* start = "2025-03-10T10:00:00+01:00"
* end = "2025-03-10T10:45:00+01:00"
* serviceCategory = $service-category#27 "Specialist Medical"
* participant[0]
  * actor = Reference(Practitioner/54321) "Dr. Maria Sundström"
  * status = #accepted
* participant[+]
  * actor = Reference(Patient/67890) "Arne Johansson"
  * status = #accepted
* participant[+]
  * actor = Reference(Location/Uppsala-Cardiology-Clinic) "Uppsala Cardiology Clinic"
  * status = #accepted

Instance: appointment-home-visit
InstanceOf: NordicAppointment
Usage: #example
* meta.profile = Canonical(NordicAppointment)
* created = "2025-02-14T13:00:00Z"
* status = #booked
* subject = Reference(Patient/67890) "Arne Johansson"
* start = "2025-03-20T10:00:00+01:00"
* end = "2025-03-20T11:00:00+01:00"
* serviceCategory = $service-category#31 "Elderly Care"
* participant[0]
  * actor = Reference(Practitioner/55555) "Nurse Ingrid Karlsson"
  * status = #accepted
* participant[+]
  * actor = Reference(Patient/67890) "Arne Johansson"
  * status = #accepted
* participant[+]
  * actor = Reference(Location/Home-Visit) "Arne Johansson's Home"
  * status = #accepted


Instance: appointment-home-care-wound-treatment
InstanceOf: NordicAppointment
Usage: #example
* meta.profile = Canonical(NordicAppointment)
* created = "2025-02-14T14:00:00Z"
* status = #booked
* subject = Reference(Patient/67890) "Arne Johansson"
* start = "2025-03-25T08:00:00+01:00"
* end = "2025-03-25T08:30:00+01:00"
* serviceCategory = $service-category#42 "Home Care"
* participant[0]
  * actor = Reference(Practitioner/45678) "Nurse Lisa Andersson"
  * status = #accepted
* participant[+]
  * actor = Reference(Patient/67890) "Arne Johansson"
  * status = #accepted
* participant[+].
  * actor = Reference(Location/Home-Visit) "Arne Johansson's Home"
  * status = #accepted
