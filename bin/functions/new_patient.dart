import 'dart:io';

import '../classes/patient.dart';

void newPatient(List<Patient> patientsF) {
  print('Enter New Patient\n' '##########################################');

  int patientID = 0;
  patientID++;

  //user input
  print('First Name: ');
  String fName = stdin.readLineSync()!;
  print('Last Name: ');
  String lName = stdin.readLineSync()!;
  print('Age: ');
  int age = int.parse(stdin.readLineSync()!);
  print('Gender: ');
  String gender = stdin.readLineSync()!;
  print('Phone Number: ');
  int phoneNumber = int.parse(stdin.readLineSync()!);
  print('Adrees: ');
  String adrees = stdin.readLineSync()!;
  print('Does the pation have Past desies: ');
  String pastDises = stdin.readLineSync()!;
  print('Blood Type: ');
  String bloodType = stdin.readLineSync()!;
  //end of user input

  patientsF.add(
    Patient(
      patientID: patientID,
      fName: fName,
      lName: lName,
      age: age,
      gender: gender,
      phoneNumber: phoneNumber,
      adrees: adrees,
      pastDises: pastDises,
      bloodType: bloodType,
    ),
  );
  print('*********************Patient Added*************************');
  print('##########################################');
  //showing patients
}
