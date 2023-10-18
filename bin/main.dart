import 'dart:io';

import 'package:dart_optativa/Calcular.dart';
import 'package:dart_optativa/calcular_fraction.dart';

void main(List<String> arguments) {
  int EntradaUsuarioOpcion;
  String NombreUsuario;
  var calcular = Calcular();
  CalcularFraction calcularFraction = CalcularFraction();

  try {
    print("\n");
    print("Ingresa tu nombre : \n");
    NombreUsuario = stdin.readLineSync().toString();
    do {
      print("\n");
      print(
          "$NombreUsuario Bienvenido al menú, seleccione la opción que desea : \n");
      print(
          "1. Positive Power\n2. Double or Triple\n3. Root or Square\n4. Circle Perimeter\n5. Midweek Day\n6. Tax Calculator \n7. Remainder Finder\n8. Sum of Evens\n9. Fraction Difference\n10.String Length\n11.Average of Four\n12.Smallest of Five\n13.Vowel Counter\n14.Factorial Finder\n15.InRange Validator\n16.Salir\n");

      print("Ingresa la opción");

      EntradaUsuarioOpcion = int.parse(stdin.readLineSync().toString());

      switch (EntradaUsuarioOpcion) {
        case 1:
          calcular.positivePower();
          break;
        case 2:
          calcular.doubleOrTriple();
          break;
        case 3:
          calcular.rootOrSquare();
          break;
        case 4:
          calcular.circlePerimeter();
          break;
        case 5:
          calcular.midWeekDay();
          break;
        case 6:
          calcular.taxCalculator();
          break;
        case 7:
          calcular.remainderFinder();
          break;
        case 8:
          calcular.sumOfEvens();
          break;
        case 9:
          calcularFraction.Difference();
          break;
        case 10:
          calcular.Stringlength();
          break;
        case 11:
          calcular.averageOfFour();
          break;
        case 12:
          calcular.smallestOfFive();
          break;
        case 13:
          calcular.vowelCounter();
          break;
        case 14:
          calcular.FactorialFinder();
          break;
        case 15:
          calcular.InRangeValidator();
          break;
        case 16:
          print("Saliendo...");
          break;
      }

      if (EntradaUsuarioOpcion > 16) {
        print(
            "La opción $EntradaUsuarioOpcion es errada , ingresa una opción valida ");
      }
    } while (EntradaUsuarioOpcion != 16);
  } catch (FormatException) {
    print(
        "Haz ingresado una opción incorrecta, intenta de nuevo. Selecciona una opción:");
    main(arguments);
  }
}
