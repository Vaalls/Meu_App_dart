import 'dart:io';

void main(){
  List<String> notas = <String>[];
  menu(notas);
}

String getComando(){
  print("Digite um comando: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair");
  List<String> comandos = <String>["1", "2", "3"];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print("Comando inválido!");
    getComando();
  }

  return entrada!;
}

List<String> adicionaNotas(List<String> notas){
  print("Escreva uma nota: ");
  String? nota = "";

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print("Não é possivel adicionar uma nota vazia");
    adicionaNotas(notas);
  }
  notas.add(nota!);
  return notas;
}

void listarNotas(List<String> notas){
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

void menu(List<String> notas){
  String comando = getComando();

  switch (comando){
    case "1":
    adicionaNotas(notas);
    menu(notas);
    
    case "2": 
    listarNotas(notas);
    menu(notas);

    case "3":
    print("Até breve");
  }
}