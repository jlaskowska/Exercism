class RnaTranscription {
  String toRna(String dna) {
    if (dna == null || dna.isEmpty) {
      return '';
    }

    Map<String, String> dnaToRna = {
      'G': 'C',
      'C': 'G',
      'T': 'A',
      'A': 'U',
    };

    List dnaToList = dna.split('');
    String rna = '';
    for (var letter in dnaToList) {
      if (dnaToRna.containsKey(letter)) {
        rna += dnaToRna[letter].toString();
      }
    }

    return rna;
  }
}
