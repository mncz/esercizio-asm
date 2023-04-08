# Esercizio Assembly
Scrivere un programma che comprenda:
1. Un `main` che:
    * Definisce un array chiamato `array1` costituito da 10 interi (1, 2, …, 10).
    * Chiama una procedura `PrintArray` che stampa a video `array1` partendo dall'ultimo elemento fino al primo elemento (ogni elemento dovrà essere scritto su una riga seguito da ";"). La procedure riceve in input l'indirizzo del primo elemento dell'array e la dimensione dell'array.
    * Chiama una procedura `BuildArray` che costruisce un nuovo array `array2` partendo da un array ricevuto in input.
    * Stampa a video `array2` costruito precedentemente.
2. La procedura `BuildArray` che:
    * Riceve come argomento un array e la sua dimensione.
    * Costruisce un array di lunghezza doppia dell'array ricevuto. Gli elementi dell'array da costruire si calcolano come segue:
        * 1° elemento: primo elemento dell'array ricevuto.
        * 2° elemento: valore restituito dalla procedura `DoubleIt` passando come argomento il primo elemento dell'array ricevuto.
        * 3° elemento: secondo elemento dell'array ricevuto.
        * 4° elemento: valore restituito dalla procedura `DoubleIt` passando come argomento il secondo elemento dell'array ricevuto.
        * …
3. La procedura `DoubleIt` che:
    * Riceve come argomento un numero e restituisce il doppio del numero ricevuto.