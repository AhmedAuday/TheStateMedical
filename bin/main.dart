//created by Ahmed Auday & mustafa Sherzad

import 'dart:io';

import 'classes/patient.dart';
import 'functions/delete_patient.dart';
import 'functions/menus.dart';
import 'functions/new_patient.dart';

import 'functions/update_patient.dart';

void main() {
  Hospital hospital = Hospital(patients: [], staffMember: []);

  menus();
  print('Your choice');
  int x = int.parse(stdin.readLineSync()!);

  if (x == 1) {
    newPatient(hospital);
    showPatientList(hospital);
    main();
  } else if (x == 2) {
    showPatientList(hospital);
    main();
  } else if (x == 3) {
    upPatient(hospital);

    main();
  } else if (x == 4) {
    delPatient(hospital);
    main();
  } else if (x == 5) {
    main();
  } else if (x == 6) {
    print(' ........///........Good Bye ........///........');
    exit(0);
  }
}
