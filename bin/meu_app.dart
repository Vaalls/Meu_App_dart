import 'dart:io';

// Null safety = Segurança contra valores nulos

void main() {
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);

  // ! = Garantimos que os valores nao viram nulos
  print(numeroUm + numeroDois);
}
