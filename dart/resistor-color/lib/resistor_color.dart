class ResistorColor {
  // TODO write a list of strings named colors
  List<String> colors = [
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

  // TODO write a method that returns an int value for an input color
  int colorCode(String color) {
    return _solution1(color.toLowerCase());
  }

  int _solution1(String color) {
    return colors.indexOf(color);
  }

  int _solution2(String color) {
    if (color == 'black') {
      return 0;
    } else if (color == 'brown') {
      return 1;
    } else if (color == 'red') {
      return 2;
    } else if (color == 'orange') {
      return 3;
    } else if (color == 'yellow') {
      return 4;
    } else if (color == 'green') {
      return 5;
    } else if (color == 'blue') {
      return 6;
    } else if (color == 'violet') {
      return 7;
    } else if (color == 'grey') {
      return 8;
    } else if (color == 'white') {
      return 9;
    }

    return -1;
  }

  int _solution3(String color) {
    switch (color) {
      case 'black':
        {
          return 0;
        }
        break;
      case 'brown':
        {
          return 1;
        }
        break;
      case 'red':
        {
          return 2;
        }
        break;
      case 'orange':
        {
          return 3;
        }
        break;
      case 'yellow':
        {
          return 4;
        }
        break;
      case 'green':
        {
          return 5;
        }
        break;
      case 'blue':
        {
          return 6;
        }
        break;
      case 'violet':
        {
          return 7;
        }
        break;
      case 'grey':
        {
          return 8;
        }
        break;
      case 'white':
        {
          return 9;
        }
        break;
      default:
        {
          return -1;
        }
        break;
    }
  }

  int _solution4(String color) {
    for (int index = 0; index < colors.length; index++) {
      if (color == colors[index]) {
        return index;
      }
    }

    return -1;
  }

  int _solution5(String color) {
    return colors.indexWhere((item) => item == color);
  }
}
