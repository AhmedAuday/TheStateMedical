import 'dart:io';

import '../classes/patient.dart';

void newPatient(Hospital hospital) {
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

  hospital.patients.add(
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

void showPatientList(Hospital hospital) {
  if (hospital.patients.isNotEmpty) {
    int count = 0;

    for (var item in hospital.patients) {
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
