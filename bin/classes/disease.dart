import 'dart:io';

import 'patient.dart';

class Diseases extends Patient {
  String? head;
  String? fever;
  String? runnyNose;
  String? snizing;

  String? puffyEyes;

  String? throatSawre;
  String? cough;
  String? snize;

  Diseases({String? fName, String? lName}) : super(fName: fName, lName: lName);

  String patientCureQustions() {
    //first
    print('Do You have a Headacahe');
    head = stdin.readLineSync()!;

    print('Do You have a fever and your temp is above 37c');
    fever = stdin.readLineSync()!;

    print('Do You have a rainy noise');
    runnyNose = stdin.readLineSync()!;

    print('Do You snize Alot');
    snize = stdin.readLineSync()!;
    //end first

    //second
    print('Do You have a red eye ');
    puffyEyes = stdin.readLineSync()!;

    print('Do You have a throatSawre ');
    throatSawre = stdin.readLineSync()!;

    print('Do You  cough ');
    cough = stdin.readLineSync()!;
    //end second

    //start if

    if (head == 'yes' &&
        fever == 'yes' &&
        runnyNose == 'yes' &&
        snize == 'yes' &&
        puffyEyes == 'no' &&
        throatSawre == 'no' &&
        cough == 'no') {
      return 'You have a cold and flue you should consider taking FlueOut 1 pice every day for 1 week';
    } else if (head == 'yes' &&
        fever == 'no' &&
        runnyNose == 'no' &&
        puffyEyes == 'no' &&
        throatSawre == 'no' &&
        snize == 'no' &&
        cough == 'no') {
      return 'you just have a headache take parasetomol 500mg';
    } else if (head == 'no' &&
        fever == 'no' &&
        runnyNose == 'no' &&
        puffyEyes == 'yes' &&
        throatSawre == 'yes' &&
        snize == 'yes' &&
        cough == 'yes') {
      return 'You have a alrgies you should consider taking antihestamine 2 in a day, 1 for lunch and 1 for dinner for 3 days \n and wear a mask ';
    } else if (head == 'no' &&
        fever == 'no' &&
        runnyNose == 'yes' &&
        puffyEyes == 'yes' &&
        throatSawre == 'yes' &&
        snize == 'yes' &&
        cough == 'yes') {
      return 'You have a alrgies you should consider taking antihestamine 2 in a day , 1 for lunch and 1 for dinner for 6 days \n and wear a mask ';
    } else {
      return 'Unknown Dises';
    }
    //end if

    //* for now its only supporting 2 diseases
  }
}
