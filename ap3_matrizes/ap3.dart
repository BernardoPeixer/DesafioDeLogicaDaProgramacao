import 'dart:math';

import '../utils/terminal_utils.dart';

void main() {
  var linhas = int.tryParse(syncPrompt('Informe o número de linhas desejado:'));
  var colunas = int.tryParse(syncPrompt('Informe o número de colunas desejadas:'));

  var matriz = criarMatriz(linhas!, colunas!);

  print('\nMatriz original:');
  imprimirMatriz(matriz);

  var numeroReal = double.tryParse(syncPrompt('Informe um número real para multiplicar a matriz:'));

  if (numeroReal != null) {
    var matrizMultiplicada = multiplicarMatriz(matriz, numeroReal);
    print('Matriz original multiplicada pelo número real:');
    imprimirMatriz(matrizMultiplicada);
  } else {
    print('Número real inválido.');
  }
}

List<List<int>> criarMatriz(int linhas, int colunas) {
  List<List<int>> matriz = [];

  for (int i = 0; i < linhas; i++) {
    List<int> linha = [];
    for (int j = 0; j < colunas; j++) {
      var numeroEscolhido = int.tryParse(syncPrompt('Informe um número para inserir na matriz:'))!;
      linha.add(numeroEscolhido);
    }
    matriz.add(linha);
  }

  return matriz;
}

void imprimirMatriz(List<List<int>> matriz) {
  for (List<int> linha in matriz) {
    print(linha.join(' | '));
  }
}

List<List<int>> multiplicarMatriz(List<List<int>> matriz, double numero) {
  List<List<int>> matrizMultiplicada = [];

  for (List<int> linha in matriz) {
    List<int> linhaMultiplicada = [];
    for (int elemento in linha) {
      linhaMultiplicada.add((elemento * numero).round());
    }
    matrizMultiplicada.add(linhaMultiplicada);
  }

  return matrizMultiplicada;
}
