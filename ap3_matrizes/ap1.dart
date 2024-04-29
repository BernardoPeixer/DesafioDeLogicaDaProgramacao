import 'dart:math';

import '../utils/terminal_utils.dart';

void main() {
  var linhas = int.tryParse(syncPrompt('Informe o número de linhas desejado:'));
  var colunas =
      int.tryParse(syncPrompt('Informe o número de colunas desejadas:'));

  var matriz = criarMatriz(linhas!, colunas!);
  imprimirMatriz(matriz);
}

List<List<int>> criarMatriz(int linhas, int colunas) {
  Random random = new Random();
  List<List<int>> matriz = [];

  for (int i = 0; i < linhas; i++) {
    List<int> linha = [];
    for (int j = 0; j < colunas; j++) {
      linha.add(random.nextInt(101));
    }
    matriz.add(linha);
  }

  return matriz;
}

void imprimirMatriz(List<List<int>> matriz) {
  for (List<int> linha in matriz) {
    print(linha
        .join(' | '));
  }
}
