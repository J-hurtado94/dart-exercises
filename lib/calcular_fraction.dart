import 'dart:io';

class CalcularFraction {
  late String PrimerEntradaUsuario;
  late String SegundaEntradaUsuario;
  var FraccionUnoWithOutSlash;
  var FraccionDosWithOutSlash;
  var DivisionUno;
  var DivisionDos;

  void Difference() {
    try {
      print(
          "Por favor ingresa la primer fraccion, de la siguiente manera 1/2:");
      PrimerEntradaUsuario = stdin.readLineSync()!;
      print(
          "Por favor ingresa la Segunda fraccion, de la siguiente manera 1/2 :");
      SegundaEntradaUsuario = stdin.readLineSync()!;
      FraccionUnoWithOutSlash = PrimerEntradaUsuario.split('/');
      FraccionDosWithOutSlash = SegundaEntradaUsuario.split('/');
      DivisionUno = List<int>.filled(FraccionUnoWithOutSlash.length, 0);
      DivisionDos = List<int>.filled(FraccionDosWithOutSlash.length, 0);

      for (int i = 0; i < FraccionUnoWithOutSlash.length; i++) {
        int Parseo = int.parse(FraccionUnoWithOutSlash[i]);
        DivisionUno[i] = Parseo;
      }
      for (int i = 0; i < FraccionDosWithOutSlash.length; i++) {
        int Parseo = int.parse(FraccionDosWithOutSlash[i]);
        DivisionDos[i] = Parseo;
      }
      if (DivisionUno[0] == DivisionDos[0] &&
          DivisionUno[1] == DivisionDos[1]) {
        print(
            "La Diferencia es : ${(DivisionUno[0] / DivisionUno[1]) - (DivisionDos[0] / DivisionDos[1])}");
      } else if (DivisionUno[0] == 0 && DivisionDos[0] == 0) {
        print("El Diferencia es: 0 ");
      } else {
        print(
            "La Diferencia es: ${(DivisionUno[0] * DivisionDos[1]) - (DivisionDos[0] * DivisionUno[1])} / ${(DivisionUno[1] * DivisionDos[1])}");
      }
    } catch (e) {
      if (e is FormatException) {
        print("Ingresaste una fracción inválida, vuelve a intentarlo");
      } else {
        print("Error desconocido: $e");
      }
    }
  }
}
