// Erstelle zwei Funktionen:


// Gibt alle Noten nacheinander aus
// z.B.: Note 1: 2, Note 2: 1, Note 3: 3
void printGrades(List<int> grades) {
  for (int i = 0; i < grades.length; i++) {
    print('Note ${i + 1}: ${grades[i]}');
  }
}

// Berechnet den Durchschnitt und gibt aus:
// "Der Durchschnitt ist: 2.0"
void calculateAndPrintAverage(List<int> grades) {
  if (grades.isEmpty) {
    print('Keine Noten vorhanden.');
    return;
  } else {
    double sum = grades.reduce((a, b) => a + b).toDouble();
    double average = sum / grades.length;
  
    print('Der Durchschnitt ist: ${average.toStringAsFixed(1)}');
  }
}

// Hauptfunktion:
// Ruft beide Funktionen nacheinander auf
void analyzeGrades(List<int> grades) {
  
  printGrades(grades);
  calculateAndPrintAverage(grades);
}