import 'dart:io';

// Null safety = Segurança contra valores nulos

void main() {
  double numeroUm = double.parse(stdin.readLineSync()!);
  double numeroDois = double.parse(stdin.readLineSync()!);
  String operacao = stdin.readLineSync()!;

  
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

  if (operacao == "+"){
    soma();
  } else {
     if (operacao == "-") {
      subtracao();
    } else{
      if (operacao == "*") {
        multiplicacao();
      } else{
        if (operacao == "/") {
          divisao();
        }
      }
    }
  }
}
