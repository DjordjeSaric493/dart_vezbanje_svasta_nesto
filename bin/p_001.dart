import 'package:p_001/p_001.dart' as p_001;
import 'package:p_001/p_001.dart';

void main(List<String> arguments) {
  //obrati pažnju na lib p_001
  print(p_001.fields);
  print(p_001.withUnderscores);
  stringBufferExercise();

  basicStringManipulationExercise2();

  //TODO: pogledaj objašnjenje
  print(regex.hasMatch('Tara')); //boolean
  print(regex.hasMatch('šestar')); //boolean
  print(regex.hasMatch('Djordje je najgori ')); //boolean

  //match set karaktera->objašenjeno
  print(set.hasMatch('bat'));
  print(set.hasMatch('batarica moj najjachi'));
  print(set.hasMatch('boat'));

  //TODO: koji je output ova dva?
  print(brojevi.hasMatch("493"));
  print(brojevi.hasMatch("493 autoputem"));
  //jel ima razlike
  print(samoBrojevi.hasMatch('555333'));
  print(samoBrojevi.hasMatch('5553kk33'));

  //TODO: pogledaj objašnjenje lib line 48....
  proveraSifre();
}
