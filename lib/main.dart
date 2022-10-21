
import 'dart:io';

import 'ManageContact.dart';

void main(List<String> arguments) {

  ManageContact m =ManageContact();
  m.WelcomeAndChoose();
  int chose = int.parse(stdin.readLineSync().toString()) ;
  if (chose == 1) {
    m.choes1();
    main(arguments);
  }
  if (chose == 2) {
    m.chose2();
    main( arguments);
  }
  if (chose == 3) {
    m.chose3();
    main(arguments);
  }
  if (chose == 4) {
    m.chose4();
    main(arguments);
  }
  if (chose == 5) {
    m.chose5();
    main(arguments);
  }

  if (chose == 6) {
    m.chose6();
    main(arguments);
  }
  if (chose == 7) {
    m.chose7();
  }

}

