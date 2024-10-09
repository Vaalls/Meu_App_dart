import 'dart:io';

// Null safety = Segurança contra valores nulos

void main() {
  var numeroUm = stdin.readLineSync();
  var numeroDois = stdin.readLineSync();

  // ! = Garantimos que os valores nao viram nulos
  print(numeroUm! + numeroDois!);
}
