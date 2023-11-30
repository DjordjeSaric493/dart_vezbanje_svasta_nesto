import 'package:p_001/P_002_ANONIMNE_FUNKCIJE/primeri.dart';

void main(List<String> args) {
  //nešto->ključ  boja->vrednost jer je boja Tip Map<String, String>
  bojeSprdnja.forEach((nesto, boja) {
    print('$nesto su $boja');
  });

//predji mišom preko -map i sve će ti se kazati
  final mapirano = brojevi.map((x) => x * x);
  print(mapirano);

  //iteracija kroz listu !
  print(mapirano.toList());

  //where metoda se koristi za filtriranje iterabilnih kolekcija poput List i Set

  final jelProsto = mojaLista.where((element) => element.isOdd);

  //ovo ne moram da objašnjavam
  for (int i = 1; i <= mojaLista.length; i++) {
    print(i.isOdd);
  }
}

//TODO:DJORDJE STAO SI NA STR 42!
