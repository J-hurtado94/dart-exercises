import 'dart:io';
import 'dart:math';

enum DiasSemana { Lunes, Martes, Miercoles, Jueves, Viernes }

class Calcular {
  late double primerEntradaUsuario;

  late double segundaEntradaUsuario;
  late double terceraEntradaUsuario;
  late double cuartaEntradaUsuario;
  late double quintaEntradaUsuario;
  double impuesto = 15;
  late String entradaUsuario;

  //Descripción: Solicita al usuario un número y eleva este número al cuadrado solo si es positivo.
  void positivePower() {
    double resultadoElevadoAlCuadrado;
    print("Ingresa un numero : ");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());

    if (primerEntradaUsuario >= 0) {
      resultadoElevadoAlCuadrado = primerEntradaUsuario * primerEntradaUsuario;
      print(
          "El numero $primerEntradaUsuario elevado al cuadrado es : $resultadoElevadoAlCuadrado");
    } else {
      print("El numero $primerEntradaUsuario no es valido");
    }
  }

  //Descripción: Solicita al usuario dos números. Si el primero es mayor, devuelva su doble, de lo contrario devuelva el triple del segundo.
  void doubleOrTriple() {
    print("Ingresa dos numeros");
    print("Ingresa el primer numero");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("Ingresa el segundo numero");
    segundaEntradaUsuario = double.parse(stdin.readLineSync().toString());
    double resultDoubleOrTriple;

    if (primerEntradaUsuario > segundaEntradaUsuario) {
      resultDoubleOrTriple = primerEntradaUsuario * 2;
      print("El resultado es $resultDoubleOrTriple");
    } else if (segundaEntradaUsuario > primerEntradaUsuario) {
      resultDoubleOrTriple = segundaEntradaUsuario * 3;
      print("El restultado es $resultDoubleOrTriple");
    } else {
      if (primerEntradaUsuario == segundaEntradaUsuario) {
        print(
            "El resultado es ${primerEntradaUsuario + segundaEntradaUsuario}");
      }
    }
  }

  //Descripción: Pide al usuario un número. Si es positivo, devuelve su raíz cuadrada, de lo contrario, devuelve su cuadrado.
  void rootOrSquare() {
    print("Ingresa un numero : ");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());
    if (primerEntradaUsuario >= 0) {
      print(
          "La raiz cuadrada del $primerEntradaUsuario es: ${sqrt(primerEntradaUsuario)}");
    } else {
      print(
          "El cuadrado del $primerEntradaUsuario es: ${(primerEntradaUsuario * primerEntradaUsuario)}");
    }
  }

  void circlePerimeter() {
    print("Ingresa el radio de un circulo : ");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());
    double Perimetro = 2 * pi * primerEntradaUsuario;
    print("El perimetro del radio $primerEntradaUsuario es : $Perimetro");
  }

  // Solicita al usuario un número entre 1 y 7 y muestra el día de la semana correspondiente, pero solo considerando los días laborables.

  void midWeekDay() {
    print("Ingresa un número del 1 al 7 : ");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());
    switch (primerEntradaUsuario) {
      case 1:
        print(
            "El día de la semana es : ${DiasSemana.Lunes.toString().split('.').last}");
        break;
      case 2:
        print(
            "El día de la semana es : ${DiasSemana.Martes.toString().split('.').last}");
        break;
      case 3:
        print(
            "El día de la semana es : ${DiasSemana.Miercoles.toString().split('.').last}");
        break;
      case 4:
        print(
            "El día de la semana es : ${DiasSemana.Jueves.toString().split('.').last}");
        break;
      case 5:
        print(
            "El día de la semana es : ${DiasSemana.Viernes.toString().split('.').last}");
        break;

      default:
        print("Número fuera del rango laboral.");
        break;
    }
  }

  //Descripción: Solicita al usuario su salario anual y, si este excede los 12000,muestra el impuesto a pagar que es el 15% del excedente.
  void taxCalculator() {
    double Excedente;
    print("Por favor digite su salario anual:");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());

    if (primerEntradaUsuario > 12000) {
      Excedente = primerEntradaUsuario - 12000;
      print("El impuesto a pagar es : ${Excedente * impuesto / 100}");
    } else {
      print("No debe impuestos");
    }
  }

  //Descripción: Solicita dos números y muestra el residuo de la división del primero entre el segundo.
  void remainderFinder() {
    print("Por favor ingresa el primer numero:");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("Por favor ingresa el segundo numero:");
    segundaEntradaUsuario = double.parse(stdin.readLineSync().toString());
    if (primerEntradaUsuario == 0 || segundaEntradaUsuario == 0) {
      print("Por favor ingresar un numero mayor a 0");
    } else {
      double Residuo = primerEntradaUsuario % segundaEntradaUsuario;
      print("El residuo es : $Residuo");
    }
  }

  //Descripción: Calcula y muestra la suma de los números pares entre 1 y 50.

  void sumOfEvens() {
    int SumaPares = 0;
    for (int i = 0; i <= 50; i++) {
      if (i % 2 == 0) {
        SumaPares += i;
      }
    }
    print("La suma de pares es: $SumaPares");
  }

  //Descripción: Pide una palabra al usuario y muestra la longitud de esa palabra.
  void Stringlength() {
    print("Por favor ingresa una palabra:");
    entradaUsuario = stdin.readLineSync().toString();
    String CorrectString = entradaUsuario
        .replaceAll(",", "")
        .replaceAll(".", "")
        .replaceAll(" ", "");
    print("El tamaño de la palabra es : ${CorrectString.length}");
  }

  //Descripción: Pide al usuario cuatro números y muestra el promedio.

  void averageOfFour() {
    print("Por favor ingresa cuatro numeros");
    print("Por favor ingresa el primer numero:");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("Por favor ingresa el segundo numero:");
    segundaEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("Por favor ingresa el tercer numero:");
    terceraEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("Por favor ingresa el cuarto numero:");
    cuartaEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("");

    var NumerosList = <double>[];
    NumerosList.add(primerEntradaUsuario);
    NumerosList.add(segundaEntradaUsuario);
    NumerosList.add(terceraEntradaUsuario);
    NumerosList.add(cuartaEntradaUsuario);

    int CantidaddeValores = NumerosList.length;
    double SumaDeValores = 0;
    for (var numeros in NumerosList) {
      SumaDeValores += numeros;
    }
    print(
        "El promedio de los números ingresados es de: ${SumaDeValores / CantidaddeValores}");
  }

  //Descripción: Pide al usuario cinco números y muestra el más pequeño
  void smallestOfFive() {
    print("Por favor ingresa cinco numeros");
    print("Por favor ingresa el primer numero:");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("Por favor ingresa el segundo numero:");
    segundaEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("Por favor ingresa el tercer numero:");
    terceraEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("Por favor ingresa el cuarto numero:");
    cuartaEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("Por favor ingresa el quinto numero:");
    quintaEntradaUsuario = double.parse(stdin.readLineSync().toString());
    print("");

    List<double> ListOfNumbers = [];
    ListOfNumbers.add(primerEntradaUsuario);
    ListOfNumbers.add(segundaEntradaUsuario);
    ListOfNumbers.add(terceraEntradaUsuario);
    ListOfNumbers.add(cuartaEntradaUsuario);
    ListOfNumbers.add(quintaEntradaUsuario);
    ListOfNumbers.sort();
    double numeroMasPequeno = ListOfNumbers[0];

    print("El numero mas pequeño es: $numeroMasPequeno");
  }

  //Descripción: Pide una palabra al usuario y devuelve el número de vocales en esa palabra.
  void vowelCounter() {
    print("Por favor ingrese una palabra:");

    entradaUsuario = stdin.readLineSync().toString().toLowerCase();

    int cantidadVocal = 0;

    var Vowels = ["a", "e", "i", "o", "u"];

    for (var letras in entradaUsuario.runes) {
      var letra = String.fromCharCode(letras);
      if (Vowels.contains(letra)) {
        cantidadVocal++;
      }
    }

    print(
        "La cantidad de vocales que tiene la palabra $entradaUsuario es de: $cantidadVocal");
  }

  //Descripción: Pide un número al usuario y devuelve el factorial de ese número;
  void FactorialFinder() {
    double ResultFactorial = 1;
    print("Ingresa un numero : ");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());

    if (primerEntradaUsuario < 0) {
      print("El numero ingresado debe ser positivo");
    } else if (primerEntradaUsuario == 0) {
      print("El factorial de 0 siempres es : $ResultFactorial");
    } else {
      for (int i = 1; i <= primerEntradaUsuario; i++) {
        ResultFactorial *= i;
      }
      print(
          "El factorial del número $primerEntradaUsuario ingresado es : $ResultFactorial");
    }
  }

  //Descripción: Pide un número al usuario y verifica si está en el rango de 10 a 20 (ambos incluidos).
  void InRangeValidator() {
    print("Ingresa un numero : ");
    primerEntradaUsuario = double.parse(stdin.readLineSync().toString());
    if (primerEntradaUsuario >= 10 && primerEntradaUsuario <= 20) {
      print("El numero $primerEntradaUsuario esta en el rango");
    } else {
      print("El numero $primerEntradaUsuario esta fuera del rango");
    }
  }
}
