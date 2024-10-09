import 'dart:io';

// Null safety = Segurança contra valores nulos

void main() {
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);

  // Criando função de soma
  void soma(){
    print(numeroUm + numeroDois);
  }

  void subtracao(){
    print(numeroUm - numeroDois);
  }

  void divisao(){
    print(numeroUm / numeroDois);
  }

  void multiplicacao(){
    print(numeroUm * numeroDois);
  }

  soma();
  subtracao();
  divisao();
  multiplicacao();
}
