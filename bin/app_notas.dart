import 'dart:io';

void main(){
  List<String> notas = <String>[];
  getComando();
  adicionaNotas(notas);
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