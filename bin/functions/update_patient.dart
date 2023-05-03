import 'dart:io';

import '../classes/patient.dart';

void upPatient(Hospital hospital) {
  //user input
  print('Enter Patient ID To upadte it : ');
  int patientId = int.parse(stdin.readLineSync()!);
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

  for (var item in hospital.patients) {
    if (item.patientID == patientId) {
      item.fName = fName;
      item.lName = lName;
      item.adrees = adrees;
      item.age = age;
      item.bloodType = bloodType;
      item.gender = gender;
      item.pastDises = pastDises;
      item.phoneNumber = phoneNumber;
    }
  }
}
