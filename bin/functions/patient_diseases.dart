import 'dart:io';

import '../classes/disease.dart';

void entDisease() {
  var userDisease = Diseases();
  //user input
  print('First Name: ');
  String fName = stdin.readLineSync()!;
  userDisease.fName = fName;
  print('Last Name: ');
  String lName = stdin.readLineSync()!;
  userDisease.lName = lName;
  //end user input

  var cureQustions = userDisease.patientCureQustions();
  print(cureQustions);
}
