// Implementiere folgende Funktionen:

// Findet und gibt kleinste und größte Zahl aus
// Zeigt auch deren Position in der Liste
void findAndPrintExtreme(List<int> numbers) {
  if (numbers.isEmpty) {
    print('Die Liste ist Leer');
    return;
  }

  int min = numbers[0];
  int max = numbers[0];
  int minIndex = 0;
  int maxIndex = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
      minIndex = i;
    }
    else if (numbers[i] > max) {
      max = numbers[i];
      maxIndex = i;
    }
  }

  print("Der kleinste Zahl ist: $min. \nSeine Position ist: ${minIndex + 1}");
  print("Der größste Zahl ist: $max. \nSeine Position ist: ${maxIndex + 1}");
}


void printNumberTypes(List<int> numbers) {
  // Zählt und gibt aus:
  // - Wie viele gerade/ungerade Zahlen
  // - Wie viele positive/negative Zahlen
}

void printDistribution(List<int> numbers) {
  // Gibt eine einfache Häufigkeitsverteilung aus
  // z.B. wie oft kommt jede Zahl vor
}

// Hauptfunktion:
void analyzeNumbers(List<int> numbers) {
  // Ruft alle Funktionen der Reihe nach auf
  // Gibt eine übersichtliche Gesamtanalyse
}