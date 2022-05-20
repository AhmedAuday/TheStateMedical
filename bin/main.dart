//created by Ahmed Auday & mustafa Sherzad

import 'dart:io';

import 'classes/patient.dart';
import 'functions/delete_patient.dart';
import 'functions/menus.dart';
import 'functions/new_patient.dart';
import 'functions/patient_diseases.dart';
import 'functions/update_patient.dart';

List<Patient> patientsLists = [];

void main() {
  Patient patientss = Patient();

  menus();
  print('Your choice');
  int x = int.parse(stdin.readLineSync()!);

  if (x == 1) {
    newPatient(patientsLists);
    patientss.showPatientList(patientsLists);
    main();
  } else if (x == 2) {
    patientss.showPatientList(patientsLists);
    main();
  } else if (x == 3) {
    upPatient(patientsLists);
    patientss.showPatientList(patientsLists);
    main();
  } else if (x == 4) {
    delPatient(patientsLists);
    main();
  } else if (x == 5) {
    entDisease();
    main();
  } else if (x == 6) {
    print(' ........///........Good Bye ........///........');
    exit(0);
  }
}
