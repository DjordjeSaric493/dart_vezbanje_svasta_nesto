//n LRC file contains the timestamps for the lyrics of a song.
//How would you extract thetime and lyrics
//for the following line of text [00:12.34]"Show me, show me, show me how you do that trick
/*The one that makes me scream", she said
"The one that makes me laugh", she said
And threw her arms around my neck
Show me how you do it
And I promise you, I promise that
I'll run away with you
I'll run away with you*/
void main(List<String> arguments) {
  regexString();
}

void regexString() {
  const line =
      '[00:03.32]Show me, show me, show me how you do that trick The one that makes me scream", she said';

  // ^     start
  // \[    literal [
  // (\d+) group of digits
  // :     literal :
  // \.    literal .
  // \]    literal ]
  // (.+)  group of characters (lyrics)
  // $     end
  final regex = RegExp(r'^\[(\d+):(\d+)\.(\d+)\](.+)$');

  final match = regex.firstMatch(line);

  final minuti = match?.group(2);
  final sekunde = match?.group(3);
  final lyrics = match?.group(4);

  print('minuti: $minuti');
  print('sekunde: $sekunde');

  print('tekst: $lyrics');
}
