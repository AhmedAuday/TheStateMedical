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

  void showPatientList(List<Patient> patiets) {
    if (patiets.isNotEmpty) {
      int count = 0;

      for (var item in patiets) {
        count++;
        print('************* Pateint $count *************');
        print('Patient ID : ${item.patientID}');
        print('First Name : ${item.fName}');
        print('last name : ${item.lName}');
        print('Age : ${item.age}');
        print('Gender : ${item.gender}');
        print('Adress : ${item.adrees}');
        print('Phone Number : ${item.phoneNumber}');
        print('Blood Type : ${item.bloodType}');
        print('Past Disease : ${item.pastDises}');
        print('************* Pateint $count Ended *************');
      }
    } else {
      print('************ No Patients Records *************\n');
    }
  }
}
