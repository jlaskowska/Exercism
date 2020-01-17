class Raindrops {
  String convert(int number) {
    return convert1(number);
  }

  String convert1(int number) {
    String result = '';

    Map<int, String> raindrops = {
      3: 'Pling',
      5: 'Plang',
      7: 'Plong',
    };

    raindrops.forEach((key, value) {
      if (number % key == 0) {
        result += value;
      }
    });

    return result.isEmpty ? number.toString() : result;
  }

  String convert2(int number) {
    String result = '';

    Map<int, String> raindrops = {
      3: 'Pling',
      5: 'Plang',
      7: 'Plong',
    };

    for (int i = 0; i < raindrops.length; i++) {
      if (number % raindrops.keys.elementAt(i) == 0) {
        result += raindrops.values.elementAt(i);
      }
    }

    if (result.isEmpty) {
      result = number.toString();
    }

    return result;
  }

  String convert3(int number) {
    String result = '';

    bool numberHasFactor3 = (number % 3 == 0);
    bool numberHasFactor5 = (number % 5 == 0);
    bool numberHasFactor7 = (number % 7 == 0);

    if (numberHasFactor3 && numberHasFactor5 && numberHasFactor7) {
      result = 'PlingPlangPlong';
    } else if (numberHasFactor3 && numberHasFactor5) {
      result = 'PlingPlang';
    } else if (numberHasFactor3 && numberHasFactor7) {
      result = 'PlingPlong';
    } else if (numberHasFactor5 && numberHasFactor7) {
      result = 'PlangPlong';
    } else if (numberHasFactor3) {
      result = 'Pling';
    } else if (numberHasFactor5) {
      result = 'Plang';
    } else if (numberHasFactor7) {
      result = 'Plong';
    } else if (!numberHasFactor7 && !numberHasFactor3 && !numberHasFactor5) {
      result = number.toString();
    }

    return result;
  }

  String convert4(int input) {
    String raindrops = '';

    if (input % 3 == 0) {
      raindrops += 'Pling';
    }

    if (input % 5 == 0) {
      raindrops += 'Plang';
    }

    if (input % 7 == 0) {
      raindrops += 'Plong';
    }

    return raindrops.isEmpty ? input.toString() : raindrops;
  }
}
