import '../utils/terminal_utils.dart';

void main() {
  var linhasA = int.tryParse(syncPrompt('Informe o número de linhas da matriz A:'));
  var colunasA = int.tryParse(syncPrompt('Informe o número de colunas da matriz A:'));

  var linhasB = int.tryParse(syncPrompt('Informe o número de linhas da matriz B:'));
  var colunasB = int.tryParse(syncPrompt('Informe o número de colunas da matriz B:'));

  if (colunasA != linhasB) {
    print('Número de colunas da matriz A deve ser igual ao número de linhas da matriz B para multiplicação.');
    return;
  }

  var matrizA = criarMatriz(linhasA!, colunasA!);
  var matrizB = criarMatriz(linhasB!, colunasB!);

  print('\nMatriz A:');
  imprimirMatriz(matrizA);

  print('\nMatriz B:');
  imprimirMatriz(matrizB);

  var matrizProduto = multiplicarMatrizes(matrizA, matrizB);
  print('\nMatriz Produto:');
  imprimirMatriz(matrizProduto);
}

List<List<int>> criarMatriz(int linhas, int colunas) {
  List<List<int>> matriz = [];

  for (int i = 0; i < linhas; i++) {
    List<int> linha = [];
    for (int j = 0; j < colunas; j++) {
      var numeroEscolhido = int.tryParse(syncPrompt('Informe um número para a posição (${i + 1},${j + 1}) da matriz:'))!;
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

List<List<int>> multiplicarMatrizes(List<List<int>> matrizA, List<List<int>> matrizB) {
  int linhasA = matrizA.length;
  int colunasA = matrizA[0].length;
  int linhasB = matrizB.length;
  int colunasB = matrizB[0].length;

  List<List<int>> matrizProduto = List.generate(linhasA, (_) => List<int>.filled(colunasB, 0));

  for (int i = 0; i < linhasA; i++) {
    for (int j = 0; j < colunasB; j++) {
      for (int k = 0; k < colunasA; k++) {
        matrizProduto[i][j] += matrizA[i][k] * matrizB[k][j];
      }
    }
  }

  return matrizProduto;
}
