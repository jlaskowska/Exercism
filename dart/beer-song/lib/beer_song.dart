class BeerSong {
  List<String> recite([int i = 99, int j = 1]) {
    List<String> song = <String>[];

    for (var loop = 0; loop < j; loop++) {
      if (loop > 0) {
        song.add('');
      }
      song.addAll(_songVerse(i - loop));
    }

    return song;
  }

  List<String> _songVerse(int i) {
    if (i > 2) {
      return [
        '$i bottles of beer on the wall, $i bottles of beer.',
        'Take one down and pass it around, ${i - 1} bottles of beer on the wall.',
      ];
    } else if (i == 2) {
      return [
        '$i bottles of beer on the wall, $i bottles of beer.',
        'Take one down and pass it around, ${i - 1} bottle of beer on the wall.',
      ];
    } else if (i == 1) {
      return [
        '$i bottle of beer on the wall, $i bottle of beer.',
        'Take it down and pass it around, no more bottles of beer on the wall.',
      ];
    } else {
      return [
        'No more bottles of beer on the wall, no more bottles of beer.',
        'Go to the store and buy some more, 99 bottles of beer on the wall.',
      ];
    }
  }
}
