class ResistorColor {
  final Map<String, int> resitorCodes = {
    "black": 0,
    "brown": 1,
    "red": 2,
    "orange": 3,
    "yellow": 4,
    "green": 5,
    "blue": 6,
    "violet": 7,
    "grey": 8,
    "white": 9,
  };

  List<String> get colors => resitorCodes.keys.toList();
  

  int colorCode(String color) {
    return resitorCodes[color];
  }}
