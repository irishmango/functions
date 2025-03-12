// Implementiere folgende Funktionen:

// Findet und gibt kleinste und größte Zahl aus
// Zeigt auch deren Position in der Liste
void findAndPrintExtreme(List<int> numbers) {
  if (numbers.isEmpty) {
    print('Die Liste ist Leer');
    return;
  }

  // Initialise both min and max as the same position in the list (To start with)
  int min = numbers[0]; 
  int max = numbers[0];
  int indexOfMin = 0; 
  int indexOfMax = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
      indexOfMin = i;
    }
    else if (numbers[i] > max) {
      max = numbers[i];
      indexOfMax = i;
    }
  }

  print("Der kleinste Zahl ist: $min. Seine Position ist: ${indexOfMin + 1}");
  print("Der größste Zahl ist: $max. Seine Position ist: ${indexOfMax + 1}");
}


// Zählt und gibt aus:
// - Wie viele gerade/ungerade Zahlen
// - Wie viele positive/negative Zahlen
void printNumberTypes(List<int> numbers) {
  int numGerade = 0;
  int numUngerade = 0;
  int numPositiv = 0;
  int numNegativ = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      numGerade++;
    } else {
      numUngerade++;
    }
  }

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] >= 0) {
      numPositiv++;
    } else {
      numNegativ++;
    } 
  }
  print("Es gibt $numPositiv positive Zahlen und $numNegativ negative Zahlen");
  print("Es gibt $numGerade gerade Zahlen und $numUngerade ungerade Zahlen");
}

// Gibt eine einfache Häufigkeitsverteilung aus
// z.B. wie oft kommt jede Zahl vor
void printDistribution(List<int> numbers) {
  Map<int, int> numbersFrequency = {};

  for (int number in numbers) {
    numbersFrequency[number] = (numbersFrequency[number] ?? 0) + 1; // Prüft ob die Zahl schon in der Mappe ist und wenn nicht, fügt sie in die Mappe als Key hinzu und gibt ein Value von 1.
                                                                    // Wenn die Zahl schon in der Mappe ist, wird der Wert von 1 erhöht. 
  }

  numbersFrequency.forEach((number, frequency) {
    print('$number kommt $frequency mal vor');
  });
}

// Hauptfunktion:
  // Ruft alle Funktionen der Reihe nach auf
  // Gibt eine übersichtliche Gesamtanalyse
void analyzeNumbers(List<int> numbers) {
  findAndPrintExtreme(numbers);
  printNumberTypes(numbers);
  printDistribution(numbers);


}
void main() {
  List<int> myNumbers = [5, 8, 7, 12, -8, 5, 7, 55, -556];

  analyzeNumbers(myNumbers);

}