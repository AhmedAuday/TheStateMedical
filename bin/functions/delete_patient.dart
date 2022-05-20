import 'dart:io';

import '../classes/patient.dart';

void delPatient(List<Patient> patients) {
  print('Enter Paiteint ID to delete records : ');
  int patientId = int.parse(stdin.readLineSync()!);
  patients.removeAt(patientId - 1);
  print('*************** Patient Has been removed ***************');
}
