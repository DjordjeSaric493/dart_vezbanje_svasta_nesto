import 'package:p_001/P_001_STRINGOVI/izvla%C4%8Denje_teksta.dart';

//desni klik na fajl u bin sa main method
// run without debugging i aukurac
void main(List<String> arguments) {
  //seljački izvlačiš karaktere index prvog i poslednjeg karaktera
  final seljacki = htmlText.substring(140, 180);
  print(seljacki);
  //elegantno, nećemo da brojimo karaktere, naslov je između dva taga
  final start = htmlText.indexOf('<h1>') + '<h1>'.length; //početni->
  final end = htmlText.indexOf('</h1>'); //krajnji
  final heading_elegantno = htmlText.substring(start, end); //izdvoj između
  print(heading_elegantno);
}
