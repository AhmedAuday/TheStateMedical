class Hospital {
  String name = "Hospital";
  String address = "Iraq , Erbil";

  List<Patient> patients = [];
  List<StaffMember> staffMember = [];
  Hospital({
    required this.patients,
    required this.staffMember,
  });
}

class StaffMember {
  String fname;
  String? lName;
  int age;
  String contact;
  String jobTitle;
  StaffMember({
    required this.fname,
    this.lName,
    required this.age,
    required this.contact,
    required this.jobTitle,
  });
}

class Patient {
  String? fName;
  String? lName;
  int? age;
  String? gender;
  int? phoneNumber;
  String? adrees;
  String? pastDises;
  String? bloodType;
  int? patientID;

  Patient({
    this.patientID,
    this.age,
    this.bloodType,
    this.pastDises,
    this.gender,
    this.fName,
    this.lName,
    this.adrees,
    this.phoneNumber,
  });
}

class MedicalHistory extends Patient {
  String condition;
  String diagnosis;
  String treatment;

  MedicalHistory({
    String? fname,
    String? lname,
    int? patientID,
    required this.condition,
    required this.diagnosis,
    required this.treatment,
  }) : super(fName: fname, lName: lname, patientID: patientID);
}
