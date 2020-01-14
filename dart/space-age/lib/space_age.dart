class SpaceAge {
  // Put your code here

  double age({String planet, int seconds}) => age2(planet: planet, seconds: seconds);

  double age1({String planet, int seconds}) {
    planet = planet.toLowerCase();
    double age = 0;
    double ageOnEarth = ((seconds * 365.25) / 31557600) / 365.25;

    if (planet == 'Earth'.toLowerCase()) {
      age = ageOnEarth;
    } else if (planet == 'Mercury'.toLowerCase()) {
      age = ageOnEarth / 0.2408467;
    } else if (planet == 'Venus'.toLowerCase()) {
      age = ageOnEarth / 0.61519726;
    } else if (planet == 'Mars'.toLowerCase()) {
      age = ageOnEarth / 1.8808158;
    } else if (planet == 'Jupiter'.toLowerCase()) {
      age = ageOnEarth / 11.862615;
    } else if (planet == 'Saturn'.toLowerCase()) {
      age = ageOnEarth / 29.447498;
    } else if (planet == 'Uranus'.toLowerCase()) {
      age = ageOnEarth / 84.016846;
    } else if (planet == 'Neptune'.toLowerCase()) {
      age = ageOnEarth / 164.79132;
    } else if (planet.isEmpty || planet == null || planet == 'Pluto'.toLowerCase()) {
      return null;
    }

    return convertToTwoDecimalPlaces(age);
  }

  double age2({String planet, int seconds}) {
    planet = planet.toLowerCase();
    double age = 0;
    Map<String, num> ageOnPlanetMap = {
      'Earth'.toLowerCase(): 1,
      'Mercury'.toLowerCase(): 0.2408467,
      'Venus'.toLowerCase(): 0.61519726,
      'Mars'.toLowerCase(): 1.8808158,
      'Jupiter'.toLowerCase(): 11.862615,
      'Saturn'.toLowerCase(): 29.447498,
      'Uranus'.toLowerCase(): 84.016846,
      'Neptune'.toLowerCase(): 164.79132,
    };

    if (ageOnPlanetMap.containsKey(planet)) {
      double ageOnEarth = ((seconds * 365.25) / 31557600) / 365.25;
      age = ageOnEarth / ageOnPlanetMap[planet];
    } else {
      return null;
    }

    return convertToTwoDecimalPlaces(age);
  }
}

double convertToTwoDecimalPlaces(double value) => (value * 100).round() / 100.0;
