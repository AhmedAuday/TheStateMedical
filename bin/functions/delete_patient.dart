import 'dart:io';

import '../classes/patient.dart';

void delPatient(Hospital hospital) {
  print('Enter Paiteint ID to delete records : ');
  int patientId = int.parse(stdin.readLineSync()!);
  hospital.patients.removeAt(patientId - 1);
  print('*************** Patient Has been removed ***************');
}
