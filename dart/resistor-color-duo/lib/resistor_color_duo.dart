class ResistorColorDuo {
  // Put your code here

  final List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];

  final Map<String, int> colorsAsMap = {
    'black': 0,
    'brown': 1,
    'red': 2,
    'orange': 3,
    'yellow': 4,
    'green': 5,
    'blue': 6,
    'violet': 7,
    'grey': 8,
    'white': 9,
  };

  int value(List<String> inputColors) {
    return solution1(inputColors);
  }

  int solution1(List<String> inputColors) {
    if (inputColors != null && inputColors.length >= 2) {
      int indexOfColor1 = colors.indexOf(inputColors[0]);
      int indexOfColor2 = colors.indexOf(inputColors[1]);
      if (indexOfColor1 >= 0 && indexOfColor2 >= 0) {
        return (indexOfColor1 * 10) + indexOfColor2;
      }
    }

    return null;
  }

  int solution2(List<String> inputColors) {
    if (inputColors != null && inputColors.length >= 2) {
      int indexOfColor1 = -1, indexOfColor2 = -1;
      for (int index = 0; index < colors.length; index++) {
        if (inputColors.first == colors[index]) {
          indexOfColor1 = index;
        }
        if (inputColors.last == colors[index]) {
          indexOfColor2 = index;
        }
      }

      if (indexOfColor1 >= 0 && indexOfColor2 >= 0) {
        return (indexOfColor1 * 10) + indexOfColor2;
      }
    }

    return null;
  }

  int solution3(List<String> inputColors) {
    if (inputColors != null && inputColors.length >= 2) {
      String indexOfColor1;
      String indexOfColor2;
      for (int index = 0; index < colors.length; index++) {
        if (inputColors.first == colors[index]) {
          indexOfColor1 = index.toString();
        }
        if (inputColors.last == colors[index]) {
          indexOfColor2 = index.toString();
        }
      }

      if (indexOfColor1 != null && indexOfColor2 != null) {
        return int.parse(indexOfColor1 + indexOfColor2);
      }
    }

    return null;
  }

  int solution4(List<String> inputColors) {
    if (inputColors != null && inputColors.length >= 2) {
      int valueColor1 = colorsAsMap[inputColors.first];
      int valueColor2 = colorsAsMap[inputColors.last];
      if (valueColor1 != null && valueColor1 >= 0 && valueColor2 != null && valueColor2 >= 0) {
        return (valueColor1 * 10) + valueColor2;
      }
    }
    return null;
  }

  int solution5(List<String> inputColors) {
    if (inputColors != null && inputColors.length >= 2) {
      int valueColor1 = colorsAsMap.containsKey(inputColors.first) ? colorsAsMap[inputColors.first] : -1;
      int valueColor2 = colorsAsMap.containsKey(inputColors.last) ? colorsAsMap[inputColors.last] : -1;
      if (valueColor1 >= 0 && valueColor2 >= 0) {
        return (valueColor1 * 10) + valueColor2;
      }
    }
    return null;
  }
}
