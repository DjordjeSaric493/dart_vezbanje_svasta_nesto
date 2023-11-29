const csvFileLine = 'Vasić,Stojan,23,Negde na jugu,Srbija';
final fields = csvFileLine.split(',');
const phrase = 'stojane majmunee';
final withUnderscores = phrase.replaceAll(' ', '_');

//zadatak iz knjige klasično drndanje sa ispisom blabla
void stringBufferExercise() {
  final buffer = StringBuffer();
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      if (i == j) {
        buffer.write(' ');
      } else {
        buffer.write('@');
      }
    }
    buffer.write('\n');
  }
  print(buffer);
}

void basicStringManipulationExercise2() {
  const original = " <sqrt(9) te :]";
  //menja : sa emoji princeze
  final replaced = original.replaceAll(':]', '👸');
  print(replaced);
}

//jebavanje sa regex-om
final regex = RegExp('ar');
//.hasMatch da li sadrži string ar
//RegExp klasa stvara match patern
//
final set = RegExp('b[oa]t');
// set [ao] match-uje a ili o NEĆE OBA!

//situacija->hoću da proverim da li je unet ispravan broj telefona
//broj je ispravan ako sadrži samo cifre
final brojevi = RegExp('r[0-9]');

final samoBrojevi = RegExp(r'^[0-9]+$');
//objašnjenje ^ match početak stringa,
//[0-9] jedan broj od 0 do 9,
//+ jedna ili više instanci prethodnog karaktera,jedan ili više 0-9
//da ne tupim -> ^[0-9]+$ match stringove
//koji od svog početka do kraja sadrže brojeve

//npr hoću da verifikujem šifru

const password = 'Sifra12345';

final lowercase = RegExp(r'[a-z]');
final uppercase = RegExp(r'[A-Z]');
final number = RegExp(r'[0-9]');

//pravim metodu da bi bilo lepo u main-u
//isto kao u Java ne brukajte se ....
void proveraSifre() {
  if (!password.contains(lowercase)) {
    print('šifra mora da ima malo slovo');
  } else if (!password.contains(uppercase)) {
    print('šifra mora da ima veliko slovo');
  } else if (!password.contains(number)) {
    print('šifra mora da ima broj');
  } else {
    print('sifra je do jaja');
  }
  if (password.length < 3) {
    print('šifra mora da ima bar 3 karaktera');
  }
}
