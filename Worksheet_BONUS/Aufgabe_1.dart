void convertMinutesToTime(int minutesInput) {
  int hours = minutesInput ~/ 60;
  int minutes = minutesInput % 60;
  print('$hours Stunden, $minutes Minuten');

}

void main() {

  convertMinutesToTime(268);

}