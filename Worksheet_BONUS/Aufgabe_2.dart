// Erstelle zwei Funktionen:


// Gibt alle Noten nacheinander aus
// z.B.: Note 1: 2, Note 2: 1, Note 3: 3
void printGrades(List<double> grades) {
  for (int i = 0; i < grades.length; i++) {
    print('Note ${i + 1}: ${grades[i]}');
  }
}

// Berechnet den Durchschnitt und gibt aus:
// "Der Durchschnitt ist: 2.0"
void calculateAndPrintAverage(List<double> grades) {
  if (grades.isEmpty) {
    print('Keine Noten vorhanden.');
    return;
  } else {
    double gradesSum = 0;
    for (double grade in grades) {
      gradesSum += grade;
    }
    double averageGrade = gradesSum / grades.length;
  
    print('Der Durchschnitt ist: ${averageGrade.toStringAsFixed(1)}');
  }
}

// Hauptfunktion:
// Ruft beide Funktionen nacheinander auf
void analyzeGrades(List<double> grades) {
  
  printGrades(grades);
  calculateAndPrintAverage(grades);
}


void main() {
  List<double> myGrades = [1.0, 1.3, 2.3, 2.7, 1.3];
  
  analyzeGrades(myGrades);

}